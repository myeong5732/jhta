package com.jhta.spring10.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jhta.spring10.dao.BoardDao;
import com.jhta.spring10.vo.BoardVO;

@Service
public class BoardService {
	@Autowired
	private BoardDao dao;
	
	public int insert(BoardVO vo) {
		return dao.insert(vo);
	}
	public int count(HashMap<String,Object> map) {
		return dao.count(map);
	}
	public List<BoardVO> list(HashMap<String,Object> map) {
		return dao.list(map);
	}
	public BoardVO detail(int num) {
		return dao.detail(num);
	}
	public BoardVO next(int num) {
		return dao.next(num);
	}
	public BoardVO prev(int num) {
		return dao.prev(num);
	}
	public int addHit(int num) {
		return dao.addHit(num);
	}
	
	public int update(BoardVO vo) {
		return dao.update(vo);
	}
	public int delete(int num) {
		return dao.delete(num);
	}
	
	public List<BoardVO> recently() {
		return dao.recently();
	}
}
