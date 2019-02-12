package kr.min.movie.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.service.AccountService;
import kr.min.movie.service.AdminService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.ShowMovieVo;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

  private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

  @Autowired
  private AccountService accountService;
  @Autowired
  private BoardService boardService;
  @Autowired
  private AdminService adminService;

  @RequestMapping(value = "/user", method = RequestMethod.GET)
  public String userGet(Model model) {
    return "admin/user";
  }

  @RequestMapping(value = "/movie", method = RequestMethod.GET)
  public String movieGet(Integer del, Model model, MovieCriteria cri) {
    if (del == null)
      del = -1;
    MoviePageMaker pageMaker = boardService.getPageMaker(cri, 10);
    System.out.println("pageMaker : " + pageMaker);
    List<ShowMovieVo> movie = new ArrayList<ShowMovieVo>();
    movie = boardService.getShowMovie(cri);

    model.addAttribute("del", del);
    model.addAttribute("movie", movie);
    model.addAttribute("pageMaker", pageMaker);
    return "admin/movieMain";
  }

  @RequestMapping(value = "/movie", method = RequestMethod.POST)
  public String moviePost(Model model, MovieCriteria cri) {
    return "admin/movieMain";
  }

  @RequestMapping(value = "/actor", method = RequestMethod.GET)
  public String actorGet(Model model, Criteria cri) {
    List<ActorVo> actor = boardService.getActors(cri);

    model.addAttribute("actor", actor);
    return "admin/actor";
  }

  @RequestMapping(value = "/actor/addA", method = RequestMethod.GET)
  public String actorAddGet(Model model) {
    return "admin/add/addActor";
  }

  @RequestMapping(value = "/director", method = RequestMethod.GET)
  public String directorGet(Model model, Criteria cri) {
    List<DirectorVo> director = boardService.getDirectors(cri);

    model.addAttribute("director", director);
    return "admin/director";
  }

  @RequestMapping(value = "/director/addD", method = RequestMethod.GET)
  public String directorAddGet(Model model) {
    return "admin/add/addDirector";
  }

  @RequestMapping(value="/movie/delete", method=RequestMethod.GET)
  public String movieDeleteGet(Model model, Integer id, Integer del) {
    adminService.deleteMovie(id);

    model.addAttribute("del", 0);
    return "redirect:/admin/movie";
  }

}
