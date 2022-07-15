package com.hcl.ecommerce.Model;

public class User {
    private int id;
    private String name;
    private String email;
    private String password;

    private String usertype;


    public User(){

    }

    public User(int id, String name, String email, String password, String usertype) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.usertype = usertype;
    }

    public User(String name, String email, String password, String usertype) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.usertype = usertype;
    }

    public User(int id, String name, String usertype) {
        this.id = id;
        this.name =name;
        this.usertype = usertype;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    @Override
    public String toString() {
        return "UserModel{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
