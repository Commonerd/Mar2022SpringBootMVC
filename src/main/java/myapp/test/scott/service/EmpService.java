package myapp.test.scott.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import myapp.test.scott.dao.EmpDao;
import myapp.test.scott.dto.Emp;


@Service
public class EmpService {
	
	@Autowired
	EmpDao dao;
	
	public List<Emp> empAll(){
		return dao.empAll();
	}
	public Emp empOne(int no){
		return dao.empOne(no);
	}
	public int maxNo() {
		return dao.maxNo();
	}
	public int addEmp(Emp e) {
		return dao.addEmp(e);
	}
	public int deleteEmp(int deptno) {
		return dao.deleteEmp(deptno);
	}
	public int updateEmp(Emp emp) {
		return dao.updateEmp(emp);
	}
}
