package model;

import java.time.LocalDateTime;

public class AccessLog {
    private int id;
    private String userEmail;
    private LocalDateTime loginTime;
    private LocalDateTime logoutTime;

    public AccessLog(int id, String userEmail, LocalDateTime loginTime, LocalDateTime logoutTime){
        this.id = id;
        this.userEmail = userEmail;
        this.loginTime = loginTime;
        this.logoutTime = logoutTime;
    }

    public AccessLog(String userEmail, LocalDateTime loginTime, LocalDateTime logoutTime){
        this(-1, userEmail, loginTime, logoutTime);
    }

    public int getId(){
        return id;
    }

    public String getUserEmail(){
        return userEmail;
    }

    public LocalDateTime getLoginTime(){
        return loginTime;
    }

    public LocalDateTime getLogoutTime(){
        return logoutTime;
    }

    public void setLogoutTime(LocalDateTime logoutTime){
        this.logoutTime = logoutTime;
    }
}
