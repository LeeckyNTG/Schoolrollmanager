package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.google.gson.Gson;

public class UpdateSRInfoSlt extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		StudentDao sd = new StudentDao();
		String id = request.getParameter("id");
		String sno = request.getParameter("sno");
		String name = request.getParameter("sName");
		String address = request.getParameter("sAddress");
		String born =request.getParameter("sBorn");
		String postcode = request.getParameter("sPostcode");
		String nation = request.getParameter("sNation");
		String sex = request.getParameter("sex");
		String tel = request.getParameter("sTel");
		String major = request.getParameter("sMajor");
		String admissiontime = request.getParameter("sAdmissionDate");
		System.out.println(request.getParameter("sxz").substring(0,1));
		int xz = Integer.parseInt(request.getParameter("sxz").substring(0,1));
		String graduateschool = request.getParameter("sGraduateSchool");
		String idcard = request.getParameter("sid");
		String politicaloutlook = request.getParameter("politicaloutlook");
		int num = sd.updateSRInfo(id, sno, name, sex, address, born, postcode, nation, tel, major, admissiontime, xz, graduateschool, idcard, politicaloutlook);
		sd.close();
		Gson gson  = new Gson();		
		if(num>0){
			String json=gson.toJson("1");
			out.print(json);
		}else{
			String json = gson.toJson(null);
			out.print(json);
		}
	}

}
