package model;

public class User {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String phone;
    private String role;

    public User() {}

    public User(int id, String firstName, String lastName, String email, String password,
    String phone, String role){
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role = role;
    }
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public int getId() { 
        return id; }
    public void setId(int id) { 
        this.id = id; }

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

