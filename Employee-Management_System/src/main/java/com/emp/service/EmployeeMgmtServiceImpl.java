package com.emp.service;

import java.util.List;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.emp.model.Employee;
import com.emp.repository.IEmployeeRepository;

@Service
public class EmployeeMgmtServiceImpl implements IEmployeeMgmtService {

	@Autowired
	private IEmployeeRepository empRepo;
	
	@Override
	public List<Employee> showAllEmployees() {
		List<Employee> list=StreamSupport.stream(empRepo.findAll().spliterator(),false).toList();
		return empRepo.findAll(Sort.by("ename"));
	}

	@Override
	public String registerEmployee(Employee emp) {
		//use service
		int idVal=empRepo.save(emp).getEmpno();
		return "Employee is Register with the id Value :"+idVal;
	}

	@Override
	public Employee getEmployeeByNo(int eno) {
		Employee emp=empRepo.findById(eno).orElseThrow(()->new IllegalArgumentException("Invalid id"));
		return emp;
	}

	@Override
	public String updateEmployee(Employee emp) {
		
		return "Employee is Updated with having id Value "+empRepo.save(emp).getEmpno();
	}

	@Override
	public String deleteEmployeeById(int eno) {
		empRepo.deleteById(eno);
		return eno+" id Employee is Deleted";
	}




}
