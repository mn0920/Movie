package kr.min.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.min.movie.dao.BoardDao;
import kr.min.movie.service.AccountService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.BoardVo;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

  @Autowired
  private AccountService accountService;
  @Autowired
  private BoardService boardService;
  @Autowired
  private BoardVo boardVo;
  @Autowired
  private BoardDao boardDao;

  @RequestMapping(value = "/addM", method = RequestMethod.GET)
  public String addGet(BoardVo boardVo, Model model) {
    return "add/addMovie";
  }
  
  @RequestMapping(value = "/addM", method = RequestMethod.POST)
  public String addPost(Model model) {
    String actorList = boardVo.getActor_list(); // 스트링 문자 POWER
    String[] actor; // 스트링을 담을 배열

    actor = actorList.split(","); // 배열에 한글자씩 저장하기

    for (int i = 0; i < actor.length; i++) { // 출력
      System.out.println(actor[i]);
      boardDao.searchActor(actor);
    }
    
    /*model.*/
    
    return "add/addMovie";
  }

}
