/*package com.example.demo;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.board.mapper.BoardMapper;
import com.example.demo.board.service.BoardService;

@Controller
public class JspTest {
		
		@Resource(name="com.example.demo.board.service.BoardService")
		BoardService boardservice;
	
		@RequestMapping("/test")
		private String jspTest() throws Exception {
			
			System.out.println(boardservice.boardCount()); // TEST
			System.out.println();
			return "test";
		}
}
*/