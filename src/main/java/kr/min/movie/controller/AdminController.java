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

  @RequestMapping(value = "/addM", method = RequestMethod.GET)
  public String addMovieGet(BoardVo boardVo, Model model) {
    return "admin/movieManagement";
  }
  
  @RequestMapping(value = "/addM", method = RequestMethod.POST)
  public String addMoviePost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/movieManagement";
  }
  

  @RequestMapping(value = "/MM/seaM", method = RequestMethod.GET)
  public String searchMovieGet(BoardVo boardVo, Model model) {
    return "admin/search/searchMovie";
  }
  
  @RequestMapping(value = "/MM/seaM", method = RequestMethod.POST)
  public String searchMoviePost(Model model, BoardVo boardVo, String[] actor) {
/*      boardService.searchActor(actor);*/
    return "admin/search/searchMovie";
  }

  
  
  @RequestMapping(value = "/MM/addA", method = RequestMethod.GET)
  public String addActorGet(BoardVo boardVo, Model model) {
    return "admin/add/addActor";
  }
  
  @RequestMapping(value = "/MM/addA", method = RequestMethod.POST)
  public String addActorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/add/addActor";
  }

  
  @RequestMapping(value = "/MM/seaA", method = RequestMethod.GET)
  public String searchActorGet(BoardVo boardVo, Model model) {
    return "admin/search/searchActor";
  }
  
  @RequestMapping(value = "/MM/seaA", method = RequestMethod.POST)
  public String searchActorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchActor";
  }

  
  
  
  @RequestMapping(value = "/MM/addD", method = RequestMethod.GET)
  public String addDirectorGet(BoardVo boardVo, Model model) {
    return "admin/add/addDirector";
  }
  
  @RequestMapping(value = "/MM/addD", method = RequestMethod.POST)
  public String addDirectorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/add/addDirector";
  }

  
  
  @RequestMapping(value = "/MM/seaD", method = RequestMethod.GET)
  public String searchDirectorGet(BoardVo boardVo, Model model) {
    return "admin/search/searchDirector";
  }
  
  @RequestMapping(value = "/MM/seaD", method = RequestMethod.POST)
  public String searchDirectorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchDirector";
  }

  
  
  
  @RequestMapping(value = "/MM/seaG", method = RequestMethod.GET)
  public String searchGenreGet(BoardVo boardVo, Model model) {
    return "admin/search/searchGenre";
  }
  
  @RequestMapping(value = "/MM/seaG", method = RequestMethod.POST)
  public String searchGenrePost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchGenre";
  }


}
