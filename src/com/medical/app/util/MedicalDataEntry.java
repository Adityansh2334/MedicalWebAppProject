package com.medical.app.util;

import com.medical.app.dao.MedicalDao;
import com.medical.app.dto.MedicalDto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MedicalDataEntry extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("nm");
        String address=req.getParameter("addrs");
        String ph=req.getParameter("ph");
        String sector=req.getParameter("sect");
        String staff=req.getParameter("staf");
        Integer st=Integer.parseInt(staff);
        String doc=req.getParameter("doc");
        Integer dc=Integer.parseInt(doc);
        String regNo=req.getParameter("rg");

        MedicalDto medicalDto =new MedicalDto();
        medicalDto.setMedicalName(name);
        medicalDto.setContactNumber(ph);
        medicalDto.setDoctorsCount(dc);
        medicalDto.setStaffCount(st);
        medicalDto.setMedicalAddress(address);
        medicalDto.setRegistrationNo(regNo);
        medicalDto.setSector(sector);

        MedicalDao medicalDao= MedicalDao.getInstance();
        medicalDao.saveMedicalDetails(medicalDto);
        req.setAttribute("Name",name);
        RequestDispatcher rd=req.getRequestDispatcher("entrySuccess.jsp");
        rd.forward(req,resp);
    }
}
