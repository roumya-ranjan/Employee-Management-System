package com.emp.service;

import java.util.List;

import com.emp.model.Employee;

public interface IEmployeeMgmtService {
	public List<Employee> showAllEmployees();
	public String registerEmployee(Employee emp);
}
