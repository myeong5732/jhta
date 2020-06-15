package com.jhta.spring10.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jhta.spring10.service.BoardService;
import com.jhta.spring10.vo.BoardVO;


@Controller
public class HomeController {
	@Autowired
	private BoardService service;
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		List<BoardVO> list=service.recently();
		model.addAttribute("list",list);
		return "home";
	}
}
