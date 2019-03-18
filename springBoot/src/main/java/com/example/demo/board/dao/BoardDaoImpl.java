package com.example.demo.board.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("com.example.demo.board.dao.BoardDaoImpl")
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlssion;
	
	@Override
	public int boardCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlssion.selectOne("com.example.demo.board.mapper.BoardMapper.boardCount");
	}
	
	
}
