package com.example.demo.board.mapper;

import org.springframework.stereotype.Repository;

/*@Repository("com.example.demo.board.mapper.BoardMapper") // @Repository : 해당 클래스가 데이터베이스에 접근하는 클래스임을 명시 
*/public interface BoardMapper {

		public int boardCount() throws Exception;
}
