package myapp.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AController {
	
	@GetMapping("/a")//슬래시 a라고 요청이 들어왔을떄
	public String a() {//요청처리자는 퍼블릭
		return "test/a";		
	};
	

}
