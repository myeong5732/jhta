package com.jhta.spring10.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jhta.spring10.service.BoardService;

@Controller
public class DeleteController {
	@Autowired
	private BoardService service;
	
	@RequestMapping("/board/delete")
	public String delete(int num) {
		int n=service.delete(num);
		if(n>0) {
			return "redirect:/board/list";
		}else {
			return "error";
		}
	}
	
	
		
}
