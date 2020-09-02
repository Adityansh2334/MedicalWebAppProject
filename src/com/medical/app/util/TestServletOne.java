package com.medical.app.util;

import com.medical.app.dao.MedicalAuthoDao;
import com.medical.app.dto.MedicalAuthorize;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class TestServletOne extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String medId=req.getParameter("mid");
        Long id=Long.parseLong(medId);
        String pass=req.getParameter("pas");
        String op=req.getParameter("ent");
        String op2=req.getParameter("upd");
        MedicalAuthoDao medicalAuthoDao= MedicalAuthoDao.getInstance();
        MedicalAuthorize detailsAuthoByMedId = medicalAuthoDao.getDetailsAuthoByMedId(id);
        if(detailsAuthoByMedId!=null && detailsAuthoByMedId.getPassword().equals(pass)) {
            req.setAttribute("Name",detailsAuthoByMedId.getName());
            if(op.equals("ent")){
                RequestDispatcher rd=req.getRequestDispatcher("dataEntry.jsp");
                rd.forward(req,resp);}
            if(op2.equals("upd")){
                RequestDispatcher rd=req.getRequestDispatcher("updateMedical.jsp");
                rd.forward(req,resp);}
        }
        else {
            req.setAttribute("Entry",op);
            req.setAttribute("Update",op2);
            RequestDispatcher rd=req.getRequestDispatcher("mediwebUnvalid.jsp");
            rd.include(req,resp);
        }
    }
}
