package com.emp.controller;




import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.emp.model.Employee;
import com.emp.service.IEmployeeMgmtService;

@Controller
public class EmployeeOperationConroller {

	@Autowired
	private IEmployeeMgmtService empService;
	
	@GetMapping("/")
	public String showHome() {
		return"home";
	}
	
	@GetMapping("/show_report")
	public String showReport(Map<String,Object>map) {
		//use service
		List<Employee> list=empService.showAllEmployees();
		//keep result in shared memory
		map.put("empsList", list);
		//return LVN
		return "show_report";
	}
	
}
