package com.example.demo.board.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.demo.board.dao.BoardDao;

@Service("com.example.demo.board.service.BoardService")
public class BoardService {

	@Resource(name="com.example.demo.board.dao.BoardDaoImpl")
	BoardDao boardDao;
	
	public int boardCount() throws Exception {
		// TODO Auto-generated method stub
		return boardDao.boardCount();
	}
	
}
