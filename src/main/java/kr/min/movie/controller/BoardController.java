package kr.min.movie.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.service.AccountService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.BoardVo;

@Controller
@RequestMapping(value="/m")
public class BoardController {
	@Autowired
	private BoardService boardService;
	/* bean에 등록된 Resource 중에서 id가 uploadPath를 가져옴*/
	@Autowired
	private AccountService accountService;

	@RequestMapping(value="/main", method = RequestMethod.GET)
	   public String main1(HttpServletRequest request, Model model, Criteria cri) {
		  AccountVo user = accountService.getLoginUser(request);
		  PageMaker pageMaker = boardService.getPageMaker(cri, 10);
		  
	      ArrayList list = null;
	      list = (ArrayList)boardService.getBoardLists(cri);
	      
	      model.addAttribute("list", list);
	      model.addAttribute("pageMaker", pageMaker);
	      model.addAttribute("user", user);
	      return "movie/main";
	   }
	
	 @RequestMapping(value="/main2", method = RequestMethod.GET)
   public String main2(HttpServletRequest request, Model model, Criteria cri) {
      return "movie/main2";
   }
	 
	  @RequestMapping(value="/AD", method = RequestMethod.GET)
    public String actorDirectorGet(HttpServletRequest request, Model model, Criteria cri) {
       return "movie/actorDirector";
    }
   
    @RequestMapping(value="/my", method = RequestMethod.GET)
    public String myGet(HttpServletRequest request, Model model, Criteria cri) {
       return "movie/my";
    }
   
    @RequestMapping(value="/R", method = RequestMethod.GET)
    public String recommendGet(HttpServletRequest request, Model model, Criteria cri) {
       return "movie/recommend";
    }
	
}
