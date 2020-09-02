package com.medical.app.dto;

import javax.persistence.*;
import java.io.Serializable;
@Entity
@Table(name = "authorized_members")
public class MedicalAuthorize implements Serializable {
    @Id
    @Column(name = "Med_ID")
    private Long medId;
    @Column(name = "Med_PASSWORD")
    private String password;
    @Column(name = "Med_NAME")
    private String name;

    public MedicalAuthorize() {

    }

    public Long getMedId() {
        return medId;
    }

    public void setMedId(Long medId) {
        this.medId = medId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "MedicalAuthorize{" +
                "name='" + name + '\'' +
                '}';
    }
}
