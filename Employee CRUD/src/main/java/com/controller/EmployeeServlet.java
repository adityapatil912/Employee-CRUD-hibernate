package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDAO;
import com.dao.EmployeeDAOFactory;
import com.dao.EmployeeDAOImpl;
import com.model.Employee;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	EmployeeDAO dao = EmployeeDAOFactory.getInstance();
	
	@Override
//	public void init() throws ServletException {
//		
//		dao = new EmployeeDAOImpl();
//	}
//       
    	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
    
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		double salary = Double.parseDouble(request.getParameter("salary"));
		
		Employee employee = new Employee();
		//employee.setId(id);
		employee.setName(name);
		employee.setSalary(salary);

		dao.saveEmployee(employee);
		out.print("Data Inserted");
		
		RequestDispatcher rd = request.getRequestDispatcher("displayEmployee.jsp");
		rd.forward(request, response);
	}

}
