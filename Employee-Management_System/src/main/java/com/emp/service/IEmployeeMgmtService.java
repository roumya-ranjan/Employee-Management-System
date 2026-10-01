package com.emp.service;

import java.util.List;

import com.emp.model.Employee;

public interface IEmployeeMgmtService {
	public List<Employee> showAllEmployees();
	public String registerEmployee(Employee emp);
	public Employee getEmployeeByNo(int eno);
	public String updateEmployee(Employee emp);
	public String deleteEmployeeById(int eno);
}
