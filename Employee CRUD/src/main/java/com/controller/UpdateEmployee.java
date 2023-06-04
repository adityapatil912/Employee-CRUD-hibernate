package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDAO;
import com.dao.EmployeeDAOFactory;
import com.model.Employee;


@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
	EmployeeDAO dao = EmployeeDAOFactory.getInstance();
       
   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   		response.setContentType("text/html");

   		PrintWriter out=response.getWriter();

   		int id=Integer.parseInt(request.getParameter("id"));

   		Employee employee=dao.getEmployeeById(id);

   		request.setAttribute("emp", employee);

   		request.getRequestDispatcher("update.jsp").forward(request, response);

   		}   		
}
