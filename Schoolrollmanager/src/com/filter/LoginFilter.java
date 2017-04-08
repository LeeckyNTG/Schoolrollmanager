package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.User;

public class LoginFilter implements Filter{

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request2=(HttpServletRequest)request;
		
		HttpServletResponse response2=(HttpServletResponse)response;
		
				String url = request2.getRequestURL().toString();
				
				String[] url1 = url.split("/");
				String reurl = url1[url1.length-1];
				request.setCharacterEncoding("utf-8");
				User user = (User)request2.getSession().getAttribute("user");
				
				if(user != null || reurl.equals("login.jsp") || reurl.equals("LoginServlet")){
					chain.doFilter(request, response);
				}else{
					response2.sendRedirect("login.jsp");
				}
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
