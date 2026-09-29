package com.emp.controller;




import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		try {
			//use service
			List<Employee> list=empService.showAllEmployees();
			//keep result in shared memory
			map.put("empsList", list);
			//return LVN
			return "show_report";
		}
		catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	@GetMapping("/register")
	public String showEmployeeRegisterForm(@ModelAttribute("emp")Employee emp) {
		return "employee_register";
	}

	@PostMapping("/register")
	public String registerEmployee(RedirectAttributes atts,@ModelAttribute("emp")Employee emp) {
		try {
			String msg=empService.registerEmployee(emp);
			atts.addFlashAttribute("resultMsg", msg);
			return "redirect:show_report";
		}
		catch (Exception e) {
			e.printStackTrace();
			atts.addAttribute("errorMsg", e);
			return "error";
		}
	}
}
