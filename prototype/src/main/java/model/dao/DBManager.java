package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types; 
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import model.AccessLog;
import model.User;

public class DBManager {

    private final Connection conn;
    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    public DBManager(Connection conn) {
        this.conn = conn;
    }


    public User findUser(String email, String password) throws SQLException {
        String sql = "SELECT * FROM Users WHERE email = ? AND password = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return extractUser(rs);
            }
        }
        return null;
    }

    public User findUserByEmail(String email) throws SQLException {
        String sql = "SELECT * FROM Users WHERE email = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return extractUser(rs);
            }
        }
        return null;
    }

    public boolean addUser(User user) throws SQLException {
        String sql = "INSERT INTO Users (first_name, last_name, email, password, phone, role) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getFirstName());
            stmt.setString(2, user.getLastName());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPassword());
            stmt.setString(5, user.getPhone());
            stmt.setString(6, user.getRole());
            return stmt.executeUpdate() > 0;
        }
    }

    public boolean updateUser(User user) throws SQLException {
        String sql = "UPDATE Users SET first_name=?, last_name=?, password=?, phone=? WHERE email=?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
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
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            return stmt.executeUpdate() > 0;
        }
    }

    public List<User> getAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try (Statement stmt = conn.createStatement()) {
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                users.add(extractUser(rs));
            }
        }
        return users;
    }

    private User extractUser(ResultSet rs) throws SQLException {
        return new User(
            rs.getInt("id"),
            rs.getString("first_name"),
            rs.getString("last_name"),
            rs.getString("email"),
            rs.getString("password"),
            rs.getString("phone"),
            rs.getString("role")
        );
    }


    public boolean addAccessLog(AccessLog log) throws SQLException {
        String sql = "INSERT INTO AccessLog (userEmail, loginTime, logoutTime) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, log.getUserEmail());
            stmt.setString(2, log.getLoginTime().format(FORMATTER));
            if (log.getLogoutTime() != null) {
                stmt.setString(3, log.getLogoutTime().format(FORMATTER));
            } else {
                stmt.setNull(3, Types.VARCHAR);
            }
            return stmt.executeUpdate() > 0;
        }
    }

    public List<AccessLog> getAllAccessLogs() throws SQLException {
        List<AccessLog> logs = new ArrayList<>();
        String sql = "SELECT * FROM AccessLog ORDER BY loginTime DESC";
        try (Statement stmt = conn.createStatement()) {
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                logs.add(extractAccessLog(rs));
            }
        }
        return logs;
    }

    public List<AccessLog> getAccessLogsByEmail(String email) throws SQLException {
        List<AccessLog> logs = new ArrayList<>();
        String sql = "SELECT * FROM AccessLog WHERE userEmail = ? ORDER BY loginTime DESC";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                logs.add(extractAccessLog(rs));
            }
        }
        return logs;
    }

    private AccessLog extractAccessLog(ResultSet rs) throws SQLException {
        LocalDateTime login = LocalDateTime.parse(rs.getString("loginTime"), FORMATTER);
        String logoutStr = rs.getString("logoutTime");
        LocalDateTime logout = (logoutStr != null) ? LocalDateTime.parse(logoutStr, FORMATTER) : null;

        return new AccessLog(
            rs.getInt("id"),
            rs.getString("userEmail"),
            login,
            logout
        );
    }
}

