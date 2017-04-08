package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;
import com.dao.UserDao;
import com.google.gson.Gson;

public class QueryUserServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String id=request.getParameter("userId");
		UserDao userDao=new UserDao();
		ArrayList<HashMap<String, String>> list;
		if(id==null){
			list=userDao.selectAll();
		}else {
			list=userDao.selectById(id);
		}
		List<User> outList=new ArrayList<User>();
		
		for(HashMap<String, String> map:list){
			
			User user=new User();
			user.setId(Integer.parseInt(map.get("id")));
			user.setUsername(map.get("username"));
			user.setPassword(map.get("password"));
			user.setName(map.get("name"));
			outList.add(user);
		}
		
		
		Gson gson  = new Gson();		
		String json=gson.toJson(outList);
		out.print(json);
	}

}
