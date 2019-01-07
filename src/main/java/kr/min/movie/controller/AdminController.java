package kr.min.movie.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.min.movie.service.AccountService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.BoardVo;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

  private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

  @Autowired
  private AccountService accountService;
  @Autowired
  private BoardService boardService;

  @RequestMapping(value = "/user", method = RequestMethod.GET)
  public String userGet(BoardVo boardVo, Model model) {
    return "admin/user";
  }

  @RequestMapping(value = "/movie", method = RequestMethod.GET)
  public String movieGet(BoardVo boardVo, Model model) {
    return "admin/movieMain";
  }

  @RequestMapping(value = "/actor", method = RequestMethod.GET)
  public String actorGet(BoardVo boardVo, Model model) {
    return "admin/actor";
  }

  @RequestMapping(value = "/actor/addA", method = RequestMethod.GET)
  public String actorAddGet(BoardVo boardVo, Model model) {
    return "admin/add/addActor";
  }

  @RequestMapping(value = "/director", method = RequestMethod.GET)
  public String directorGet(BoardVo boardVo, Model model) {
    return "admin/director";
  }

  @RequestMapping(value = "/director/addD", method = RequestMethod.GET)
  public String directorAddGet(BoardVo boardVo, Model model) {
    return "admin/add/addDirector";
  }

}
