
package com.aprinting.aprintingkart.models;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
@Table(name = "customer", uniqueConstraints = { @UniqueConstraint(columnNames = "email") })
@JsonIgnoreProperties(value = { "address" }, ignoreUnknown = true)
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @NotNull
    @Email(message = "Provide a valid email address")
    private String email;

    private String contactNo;

    @Column(columnDefinition = "boolean default true")
    private Boolean active = true;

    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    @NotNull(message = "password cannot be empty")
    @Size(min = 3, message = "password is too short")
    private String password;

    @Column(columnDefinition = "float default 0.0")
    private Float discount;

    @OneToMany(fetch = FetchType.LAZY)
    private List<Address1> address = new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<Address1> getAddress() {
        return address;
    }

    public void setAddress(Address1 address) {
        this.address.add(address);
    }

    @Override
    public String toString() {
        return "Customer [contactNo=" + contactNo + ", discount=" + discount + ", email=" + email + ", id=" + id
                + ", name=" + name + ", active=" + active + ", password=" + password + "]";
    }

    public Float getDiscount() {
        return discount;
    }

    public void setDiscount(Float discount) {
        this.discount = discount;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

}
