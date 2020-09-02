package com.medical.app.dto;

import javax.persistence.*;
import java.io.Serializable;
@Entity
@Table(name = "medical_details")
public class MedicalDto implements Serializable {
    public MedicalDto() {
    }
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    private Long id;
    @Column(name = "Medical_Name")
    private String medicalName;
    @Column(name = "Medical_ADDRESS")
    private String medicalAddress;
    @Column(name = "Medical_STAFFS")
    private Integer staffCount;
    @Column(name = "Medical_DOCTORS")
    private Integer doctorsCount;
    @Column(name = "Medical_SECTOR")
    private String sector;
    @Column(name = "Medical_REGNO")
    private String registrationNo;
    @Column(name = "Medical_PHONE")
    private String contactNumber;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMedicalName() {
        return medicalName;
    }

    public void setMedicalName(String medicalName) {
        this.medicalName = medicalName;
    }

    public String getMedicalAddress() {
        return medicalAddress;
    }

    public void setMedicalAddress(String medicalAddress) {
        this.medicalAddress = medicalAddress;
    }

    public Integer getStaffCount() {
        return staffCount;
    }

    public void setStaffCount(Integer staffCount) {
        this.staffCount = staffCount;
    }

    public Integer getDoctorsCount() {
        return doctorsCount;
    }

    public void setDoctorsCount(Integer doctorsCount) {
        this.doctorsCount = doctorsCount;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public String getRegistrationNo() {
        return registrationNo;
    }

    public void setRegistrationNo(String registrationNo) {
        this.registrationNo = registrationNo;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

}
