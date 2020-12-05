package com.my.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/")
public class BoardController {
	
	@Autowired
	BoardServiceImpl boardService;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list", boardService.getBoardList());
		return "list";
	}
	
	@RequestMapping(value="/kickboardList", method = RequestMethod.GET)
	public String kickboardlist(Model model) {
		model.addAttribute("kickboardlist", boardService.getBoardList());
		return "kickboardList";
	}
	
	@RequestMapping(value="/usingList", method = RequestMethod.GET)
	public String usinglist(Model model) {
		model.addAttribute("usinglist", boardService.getBoardList());
		return "usingList";
	}
	
	
	
	@RequestMapping(value="/addpostform", method = RequestMethod.GET) //이런 url을 받으면
	public String addPost(@PathVariable("id")int id, Model model) { //이 메쏘드로 가서 실행
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("vo", boardVO);
		model.addAttribute("num", "num");
		return "addpostform"; //이 뷰페이지로 간다.
	}
	
	
	
	@RequestMapping(value="/addok", method = RequestMethod.POST)
	public String addPostOk(BoardVO vo) {
		int i=boardService.insertBoard(vo);
		if(i==0)
			System.out.println("데이터 추가 실패 ");	
		else 
			System.out.println("데이터 추가 성공!! ");
		return "redirect:list";
	}
	
	@RequestMapping(value="/deletepostform", method = RequestMethod.GET) //이런 url을 받으면
	public String deletePost(@PathVariable("id")int id, Model model) { //이 메쏘드로 가서 실행
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("vo", boardVO);
		model.addAttribute("num", "num");
		return "deletepostform"; //이 뷰페이지로 간다.
	}
	
	
	
	@RequestMapping(value="/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id")int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("vo", boardVO);
		return "editform";
	}
	

	@RequestMapping(value="/editok", method = RequestMethod.POST)
	public String editPostOk(BoardVO vo) {
		if(boardService.updateBoard(vo)==0)
			System.out.println("데이터 수정 실패");
		else
			System.out.println("데이터 수정 성공 ");
		
		return "redirect:list";
	}
	
	
	@RequestMapping(value="/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id")int id) {
		if(boardService.deleteBoard(id)==0)
			System.out.println("데이터 삭제 실패");
		else
			System.out.println("데이터 삭제 성공 ");
		
		return "redirect:../list";
	}
	
	
	
}
