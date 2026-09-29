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


}
