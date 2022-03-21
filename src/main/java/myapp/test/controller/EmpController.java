package myapp.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import myapp.test.scott.dto.Emp;
import myapp.test.scott.service.EmpService;


@Controller
public class EmpController {
	
	@Autowired
	EmpService eservice;
	
	
	@GetMapping("emp/insert")
	public String insertEmp(Model m) {
		int no = eservice.maxNo()+1;
		m.addAttribute("no",no);
		return "emp/insertForm"; 
	}
	@PostMapping("emp/insert")
	public String insert(Emp emp) {
		int i = eservice.addEmp(emp);
		if(i != 0) {
			System.out.println(emp.getEmpno()+"사원 추가");
		}else {
			System.out.println(emp.getEmpno()+"사원 추가 못함");
		}
		return "redirect:/";
	}
	
	
	
	

}