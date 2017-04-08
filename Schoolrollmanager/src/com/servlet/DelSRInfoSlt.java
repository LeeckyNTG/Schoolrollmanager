package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.google.gson.Gson;

public class DelSRInfoSlt extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String str = request.getParameter("id");
		String id = str.substring(1, str.length()-1);
		StudentDao sd = new StudentDao();
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		int num = sd.delSRInfo(id);
		sd.close();
		if(num>0){
			String json=gson.toJson("1");
			out.print(json);
		}else{
			String json = gson.toJson(null);
			out.print(json);
		}
	}

}
