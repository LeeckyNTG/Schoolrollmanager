package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.google.gson.Gson;

public class QuerySRInfo extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		StudentDao sd = new StudentDao();
		String sno = request.getParameter("sno");
		String name = request.getParameter("name");
		System.out.println(sno+"  |  "+name);
		ArrayList<HashMap<String, String>> list = sd.querySRInfo(sno,name);
		PrintWriter out = response.getWriter();
		Gson gson  = new Gson();		
		String json=gson.toJson(list);
		out.print(json);
	}

}
