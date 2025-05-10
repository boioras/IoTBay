package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.User;

public class UserDAO {
    private final Connection conn;

    public UserDAO(Connection conn){
        this.conn = conn;
    }

    public boolean addUser(User user) throws SQLException {
        String sql = "INSERT INTO Users (first_name, last_name, email, password, phone, role) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, user.getFirstName());
            stmt.setString(2, user.getLastName());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPassword());
            stmt.setString(5, user.getPhone());
            stmt.setString(6, user.getRole());
            return stmt.executeUpdate() > 0;
        }
    }

    public User getUser(String email, String password) throws SQLException {
        String sql = "SELECT * FROM Users WHERE email = ? AND password = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()){
                return extUser(rs);
            }
        }
        return null;
    }

    public User getUserEmail(String email) throws SQLException {
        String sql = "SELECT * FROM Users WHERE email = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()){
                return extUser(rs);
            }
        }
        return null;
    }

    public boolean updateUser(User user) throws SQLException {
        String sql = "UPDATE Users SET first_name=?, last_name=?, password=?, phone=? WHERE email=?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, user.getFirstName());
            stmt.setString(2, user.getLastName());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getPhone());
            stmt.setString(5, user.getEmail());
            return stmt.executeUpdate() > 0;
        }
    }

    public boolean deleteUser(String email) throws SQLException {
        String sql = "DELETE FROM Users WHERE email = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, email);
            return stmt.executeUpdate() > 0;
        }
    }
    
    public List<User> getAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try (Statement stmt = conn.createStatement()) {
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()){
                users.add(extUser(rs));
            }
        }
        return users;
    }

    private User extUser(ResultSet rs) throws SQLException {
        return new User(
            rs.getInt("id"),
            rs.getString("email"),
            rs.getString("first_name"),
            rs.getString("last_name"),
            rs.getString("password"),
            rs.getString("phone"),
            rs.getString("role")
        );

    }

}
