package com.aprinting.aprintingkart.Forms;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class AdminProfileForm {
    private String name;
    private String email;
    private String address;
    private String phone;
    private String password;

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        return "AdminProfileForm [address=" + address + ", email=" + email + ", name=" + name + ", password=" + password
                + ", phone=" + phone + "]";
    }

}
