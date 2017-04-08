package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.dao.AdminDao;
import com.google.gson.Gson;

public class UpdatePsSlt extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		User user = (User) request.getSession().getAttribute("user");
		String username=null;
		if(user!=null){
			username = user.getUsername();
		}
		String oldPassword = request.getParameter("oldPassword");
		String password = request.getParameter("password");
		System.out.println(oldPassword+"  |  "+password);
 		AdminDao ad = new AdminDao();
 		AdminDao ad1 = new AdminDao();
		int num = ad1.queryPs(username, oldPassword);
		if(num>0){
			ad.updatePs(username, password);
			ad.close();
			Gson gson = new Gson();
			String json = gson.toJson("2");
			out.print(json);
		}else{
			Gson gson = new Gson();
			String json = gson.toJson("1");
			out.print(json);
		}
	}

}
