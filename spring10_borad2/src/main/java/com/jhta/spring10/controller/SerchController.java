package com.jhta.spring10.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.spring10.service.BoardService;


public class SerchController {
	
	//private BoardService service;
	//@RequestMapping("/board/serch")
	public String serch(String keyword,String field,Model model) {
		System.out.println("키워드:"+keyword);
		System.out.println("필드:"+field);
		return "/";
	}
}
