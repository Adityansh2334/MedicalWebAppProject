package com.medical.app.dao;

import com.medical.app.dto.MedicalDto;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class MedicalDao {
        private static MedicalDao medicalDao=null;
        Configuration configuration=null;
        SessionFactory sessionFactory=null;
        private MedicalDao(){
                configuration=new Configuration();
                configuration.configure();
                configuration.addAnnotatedClass(MedicalDto.class);
                sessionFactory=configuration.buildSessionFactory();
        }
        public static MedicalDao getInstance(){
            if(medicalDao==null){
                medicalDao=new MedicalDao();
                return medicalDao;
            }
            return medicalDao;
        }
        public void saveMedicalDetails(MedicalDto medicalDto){
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.save(medicalDto);
            transaction.commit();
            session.close();
        }
        public MedicalDto getMedicalDetailsById(Long id){
            Session session = sessionFactory.openSession();
            return session.get(MedicalDto.class,id);
        }
        public void upddateMedicalDataById(Long id,String field,String data ){
            MedicalDto medicalDto=getMedicalDetailsById(id);
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            switch(field){
                case "name":
                    medicalDto.setMedicalName(data);
                    break;
                case "address":
                    medicalDto.setMedicalAddress(data);
                    break;
                case "sector":
                    medicalDto.setSector(data);
                    break;
                case "phone":
                    medicalDto.setContactNumber(data);
                    break;
                case "regeno":
                    medicalDto.setRegistrationNo(data);
                    break;
                case "staff":
                    medicalDto.setStaffCount(Integer.parseInt(data));
                    break;
                case "doctor":
                    medicalDto.setDoctorsCount(Integer.parseInt(data));
                    break;
            }
            session.update(medicalDto);
            transaction.commit();
        }




}
