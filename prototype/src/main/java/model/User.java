package model;

public class User {
    private String userName;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String phone;
    private String role;

    public User() {}

    public User(String userName, String firstName, String lastName, String email, String password,
    String phone, String role){
        this.userName = userName;
        this.firstName = firstName;
        this.firstName = lastName;
        this.firstName = email;
        this.firstName = password;
        this.firstName = phone;
        this.firstName = role;
    }
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public String getUserName() { 
        return userName; }
    public void setuserName(String userName) { 
        this.userName = userName; }

    public String getFirstName() { 
        return firstName; }
    public void setFirstName(String firstName) { 
        this.firstName = firstName; }

    public String getLastName() { 
        return lastName; }
    public void setLastName(String lastName) { 
            this.lastName = lastName; }

    public String getEmail() {
        return email; }
    public void setEmail(String email) { 
        this.email = email; }

    public String getPassword() { 
        return password; }
    public void setPassword(String password) { 
        this.password = password; }

    public String getPhone() { 
        return phone; }
    public void setPhone(String phone) { 
        this.phone = phone; }

    public String getRole() { 
        return role; }
    public void setRole(String role) { 
        this.role = role; }

    // Utility method to check role
    public boolean isStaff() {
        return "staff".equalsIgnoreCase(this.role);
    }

    public boolean isCustomer() {
        return "customer".equalsIgnoreCase(this.role);
    }

}

