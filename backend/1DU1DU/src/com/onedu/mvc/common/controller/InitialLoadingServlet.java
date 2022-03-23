package com.onedu.mvc.common.controller;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import com.onedu.mvc.common.config.ConfigLocation;


@WebServlet(urlPatterns= {}, loadOnStartup = 1)
public class InitialLoadingServlet extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
		
		ConfigLocation.mybatisConfigLocation = config.getServletContext().getInitParameter("mybatis-config-location");
		
	}

}
