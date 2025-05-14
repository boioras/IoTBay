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

public class AccessLogDAO {
    private final Connection conn;

    private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

    public AccessLogDAO(Connection conn){
        this.conn = conn;
    }

    public boolean addAccessLog(AccessLog log) throws SQLException{
        String sql = "INSERT INTO AccessLog (userEmail, loginTime, logoutTime) VALUES (?, ?, ?)";
        try(PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, log.getUserEmail());
            stmt.setString(2, log.getLoginTime().format(FORMATTER));
            if(log.getLogoutTime() != null){
                stmt.setString(3, log.getLogoutTime().format(FORMATTER));
            }
            else{
                stmt.setNull(3, Types.VARCHAR);
            }
            return stmt.executeUpdate() > 0;
        }
    }

    public List<AccessLog> getAllLogs() throws SQLException{
        List<AccessLog> logs = new ArrayList<>();
        String sql = "SELECT * FROM AccessLog ORDER BY loginTime DESC";
        try(Statement stmt = conn.createStatement()){
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                logs.add(extLog(rs));
            }
        }
        return logs;
    }

    public List<AccessLog> getLogEmail(String email) throws SQLException{
        List<AccessLog> logs = new ArrayList<>();
        String sql = "SELECT * FROM AccessLog WHERE userEmail = ? ORDER BY loginTime DESC";
        try(PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                logs.add(extLog(rs));
            }
        }
        return logs;
    }

    private AccessLog extLog(ResultSet rs) throws SQLException {
        LocalDateTime login = LocalDateTime.parse(rs.getString("loginTime"), FORMATTER);
        String logoutExt = rs.getString("logoutTime");
        LocalDateTime logout = (logoutExt != null) ? LocalDateTime.parse(logoutExt, FORMATTER) : null;
    
        return new AccessLog(
            rs.getInt("id"),
            rs.getString("userEmail"),
            login,
            logout
        );
    }


    
}
