package com.example.demo.board.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.example.demo.board.service.BoardService;

@Controller
public class BoardController {
	
	@Resource(name="com.example.demo.board.service.BoardService")
	BoardService boardservice;
	
	@RequestMapping("/home")
	private String test() {
	
		return "home";
		
	}
	
	@RequestMapping("/test")
	private ModelAndView jspTest() throws Exception {
		ModelAndView modelAndView = new ModelAndView("test"); // 리턴 view페이지 설정 
		Map<String, String> charactor =  new HashMap<String,String>();
		charactor.put("vein","베인");
		charactor.put("yasuo","야스오");
		modelAndView.addObject("home","ModelAndView 클래스를  활용한 : HelloWorld");
		modelAndView.addObject("charactor",charactor);
		System.out.println(boardservice.boardCount()); // TEST
		System.out.println();
		return modelAndView;
	}	
	
	@RequestMapping("/write")
	private String boardWrite() {
		
		return "boardWrite";
	}
	@RequestMapping("/main")
	private String main() {
		return "main";
	}
	
}
