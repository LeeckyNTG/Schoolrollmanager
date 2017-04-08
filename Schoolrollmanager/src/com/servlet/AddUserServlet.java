package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.dao.UserDao;
import com.google.gson.Gson;

public class AddUserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		
		User user=new User();
		user.setName(name);
		user.setUsername(username);
		user.setPassword(password);
		user.setPosition("教师");
		UserDao userDao=new UserDao();
		int i=userDao.insertUser(user);
		
		if(i>0){
			Gson gson  = new Gson();		
			String json=gson.toJson("456");
			out.print(json);
		}else{
			String json=null;
			out.print(json);
		}
		
		
		
	}

}
