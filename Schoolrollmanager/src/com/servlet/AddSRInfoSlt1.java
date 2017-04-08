package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.google.gson.Gson;

public class AddSRInfoSlt1 extends HttpServlet {

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
		Gson gson = new Gson();
		String sno = request.getParameter("sno");
		System.out.println(sno);
		int num = sd.querySno(sno);
		sd.close();
		System.out.println(num);
		if(num>0){
			String json = gson.toJson("11");
			out.print(json);
		}else{
			String json = null;
			out.print(json);
			
		}
	}

}
