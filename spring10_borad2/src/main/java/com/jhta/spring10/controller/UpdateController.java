package com.jhta.spring10.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jhta.spring10.service.BoardService;
import com.jhta.spring10.vo.BoardVO;

@Controller
public class UpdateController {
	@Autowired
	private BoardService service;
	
	@RequestMapping(value = "/board/update", method =RequestMethod.GET )
	public String goUpdate(int num,Model model) {
		BoardVO vo=service.detail(num);
		model.addAttribute("vo",vo);
		return "board/update";
	}
	@RequestMapping(value = "/board/update", method =RequestMethod.POST )
	public String updateOk(BoardVO vo) {
		int n=service.update(vo);
		if(n>0) {
			return "redirect:/board/list";
		}else {
			return "error";
		}
		
	}
}
