package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.dao.UserDao;

public class UpdPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String password=request.getParameter("password");
		
		User user1=(User)request.getSession().getAttribute("user");
		String username=user1.getUsername();
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		UserDao userDao=new UserDao();
		int i=userDao.updPwd(user);
		
		out.print(i);
		
	}

}
