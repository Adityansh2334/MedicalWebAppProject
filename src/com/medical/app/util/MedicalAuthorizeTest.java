package com.medical.app.util;

import com.medical.app.dao.MedicalAuthoDao;
import com.medical.app.dto.MedicalAuthorize;

public class MedicalAuthorizeTest {
    public static void main(String[] args) {
        MedicalAuthorize medicalAuthorize=new MedicalAuthorize();
        medicalAuthorize.setMedId(90872l);
        medicalAuthorize.setPassword("Ananya_21");
        medicalAuthorize.setName("Ananya Pandey");
        MedicalAuthoDao medicalAuthoDao=MedicalAuthoDao.getInstance();
        medicalAuthoDao.saveAuthorizeMemebers(medicalAuthorize);
//        System.out.println(medicalAuthoDao.getDetailsAuthoByMedId(90872l));

    }
}
