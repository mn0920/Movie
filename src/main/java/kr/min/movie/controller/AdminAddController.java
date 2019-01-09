package kr.min.movie.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.min.movie.service.AccountService;
import kr.min.movie.service.AdminService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.BoardVo;
import kr.min.movie.vo.GenreVo;

@Controller
@RequestMapping(value = "/admin")
public class AdminAddController {

  private static final Logger logger = LoggerFactory.getLogger(AdminAddController.class);

  @Autowired
  private AccountService accountService;
  @Autowired
  private BoardService boardService;
  @Autowired
  private AdminService adminService;

  @RequestMapping(value = "/movie/addM", method = RequestMethod.GET)
  public String addMovieGet(BoardVo boardVo, Model model) {
    return "admin/add/addMovie";
  }
  
  @RequestMapping(value = "/movie/addM", method = RequestMethod.POST)
  public String addMoviePost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/add/addMovie";
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



  
  @RequestMapping(value = "/MM/seaA", method = RequestMethod.GET)
  public String searchActorGet(BoardVo boardVo, Model model) {
    return "admin/search/searchActor";
  }
  
  @RequestMapping(value = "/MM/seaA", method = RequestMethod.POST)
  public String searchActorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchActor";
  }

  
  @RequestMapping(value = "/MM/seaA/cho", method = RequestMethod.GET)
  public String searchActor1Get(BoardVo boardVo, Model model) {
    return "admin/search/searchActor1";
  }
  
  @RequestMapping(value = "/MM/seaA/cho", method = RequestMethod.POST)
  public String searchActor1Post(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchActor1";
  }  
  
  @RequestMapping(value = "/MM/seaA/cho/addA", method = RequestMethod.GET)
  public String addActorGet(BoardVo boardVo, Model model) {
    return "admin/add/sAddActor";
  }
  
  @RequestMapping(value = "/MM/seaA/cho/addA", method = RequestMethod.POST)
  public String addActorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/add/sAddActor";
  }

  
  
  
  @RequestMapping(value = "/MM/seaD/cho/addD", method = RequestMethod.GET)
  public String addDirectorGet(BoardVo boardVo, Model model) {
    return "admin/add/sAddDirector";
  }
  
  @RequestMapping(value = "/MM/seaD/cho/addD", method = RequestMethod.POST)
  public String addDirectorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/add/sAddDirector";
  }

  
  
  @RequestMapping(value = "/MM/seaD", method = RequestMethod.GET)
  public String searchDirectorGet(BoardVo boardVo, Model model) {
    return "admin/search/searchDirector";
  }
  
  @RequestMapping(value = "/MM/seaD", method = RequestMethod.POST)
  public String searchDirectorPost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchDirector";
  }

  
  
  @RequestMapping(value = "/MM/seaD/cho", method = RequestMethod.GET)
  public String searchDirector1Get(BoardVo boardVo, Model model) {
    return "admin/search/searchDirector1";
  }
  
  @RequestMapping(value = "/MM/seaD/cho", method = RequestMethod.POST)
  public String searchDirector1Post(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchDirector1";
  }

  
  
  
  @RequestMapping(value = "/MM/seaG", method = RequestMethod.GET)
  public String searchGenreGet(GenreVo genreVo,  Model model) {
    
    List<GenreVo> genre = adminService.getGenre();
    
    model.addAttribute("genre", genre);
    return "admin/search/searchGenre";
  }
  
  @RequestMapping(value = "/MM/seaG", method = RequestMethod.POST)
  public String searchGenrePost(Model model, BoardVo boardVo, String[] actor) {
    return "admin/search/searchGenre";
  }

}
