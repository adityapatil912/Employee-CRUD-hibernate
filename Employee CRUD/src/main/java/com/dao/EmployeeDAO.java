package com.dao;

import java.util.List;

import com.model.Employee;

public interface EmployeeDAO {
	
	void saveEmployee(Employee emp);
	void deleteEmployeeById(int id);
	Employee getEmployeeById(int id);
	List<Employee> findAllEmplyoees();
	boolean UpdateEmployee(Employee uemp);

}
