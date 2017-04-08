package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.StudentDao;
import com.google.gson.Gson;
import com.tools.DBtoolToManager;

public class DelSomeSRInfoSlt extends HttpServlet {
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
		String str = request.getParameter("strCheck");
		String [] str1 = str.split("#");
		System.out.println("str:"+str1.length+" str1: "+str1);
		Gson gson = new Gson();
		int num=0;
		if(str1.length==1&&!str1.equals("")){
			num+=sd.delSRInfo(str1[0]);
		}else if(str1.length>1){
			for(int i=1;i<str1.length;i++){
				num+=sd.delSRInfo(str1[i]);
			}
		}
		sd.close();
		System.out.println("num="+num);
		if(num>0){
			String json = gson.toJson("1");
			out.print(json);
		}else{
			String json = gson.toJson(null);
			out.print(json);
		}
		
	}

}
