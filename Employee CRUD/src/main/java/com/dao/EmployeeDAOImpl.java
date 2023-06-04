package com.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.model.Employee;
import com.util.HibernateUtil;

public class EmployeeDAOImpl implements EmployeeDAO {

	@Override
	public void saveEmployee(Employee emp) {

		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();

		Transaction tx = session.beginTransaction();
		session.save(emp);

		tx.commit();
		System.out.println("Save Data");

		session.close();
	}

	@Override
	public void deleteEmployeeById(int id) {

		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();

		Transaction tx = session.beginTransaction();

		Employee employee = (Employee) session.get(Employee.class, id);

		System.out.println(employee);
		session.delete(employee);

		tx.commit();
		System.out.println("Delete Data");
		session.close();
	}

	@Override
	public List<Employee> findAllEmplyoees() {

		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();

		Criteria criteria = session.createCriteria(Employee.class);

		List<Employee> empList = criteria.list();

		return empList;
	}

	public boolean UpdateEmployee(Employee uemp) {
		boolean flag = false;
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
		try {
			Employee emp = (Employee) session.get(Employee.class, uemp.getId());
			if (emp != null) {
				emp.setName(uemp.getName());
				emp.setSalary(uemp.getSalary());
				tx.commit();
				flag = true;
			}
		} catch (HibernateException e) {
			// TODO: handle exception
			flag = false;
		}
		return flag;
	}

	@Override
	public Employee getEmployeeById(int id) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();

		Employee emp = (Employee) session.load(Employee.class, id);
		return emp;

	}

}
