package com.medical.app.dao;

import com.medical.app.dto.MedicalAuthorize;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


public class MedicalAuthoDao {
    private static MedicalAuthoDao medicalAuthoDao=null;
    Configuration configuration=null;
    SessionFactory sessionFactory=null;
    private MedicalAuthoDao(){
        System.out.println("Object Created For AUTHO");
        configuration=new Configuration();
        configuration.configure();
        configuration.addAnnotatedClass(MedicalAuthorize.class);
        sessionFactory=configuration.buildSessionFactory();
    }
    public static MedicalAuthoDao getInstance(){
        if(medicalAuthoDao==null){
            medicalAuthoDao=new MedicalAuthoDao();
            return medicalAuthoDao;
        }
        return medicalAuthoDao;
    }
    public void saveAuthorizeMemebers(MedicalAuthorize medicalAuthorize){
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(medicalAuthorize);
        transaction.commit();
        session.close();
    }
    public MedicalAuthorize getDetailsAuthoByMedId(Long medId){
        Session session = sessionFactory.openSession();
        return session.get(MedicalAuthorize.class,medId);
    }
}
