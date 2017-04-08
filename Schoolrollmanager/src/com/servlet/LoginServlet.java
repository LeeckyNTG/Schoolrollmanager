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

public class LoginServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String position=request.getParameter("position");
		
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setPosition(position);
		
		UserDao userDao=new UserDao();
		
		int i=userDao.login(user);
		
		if(i>0){
			request.getSession().setAttribute("user", user);
			Gson gson  = new Gson();		
			String json=gson.toJson(position);
			out.print(json);
		}else{
			String json=null;
			out.print(json);
		}
		
		
	}

}
