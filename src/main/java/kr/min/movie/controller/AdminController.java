package kr.min.movie.controller;

import java.sql.Date;
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
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.MovieVo;
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
  public String movieGet(Model model) {
    List<ShowMovieVo> movie = boardService.getShowMovie();

    model.addAttribute("movie", movie);
    return "admin/movieMain";
  }

  @RequestMapping(value = "/movie/modify", method = RequestMethod.GET)
  public String movieModifyGet(Model model, Integer id) {
    ShowMovieVo movie = boardService.getMovie(id);

    model.addAttribute("movie", movie);
    return "admin/modify/ModifyMovie";
  }

  @RequestMapping(value = "/movie/modify", method = RequestMethod.POST)
  public String movieModifyPost(Model model, MovieVo movieVo) {
    adminService.modifyMovie(movieVo);
    model.addAttribute("id", movieVo.getId());
    return "redirect:/admin/movie/modify";
  }

  @RequestMapping(value = "/actor", method = RequestMethod.GET)
  public String actorGet(Model model) {
    List<ActorVo>  actor = boardService.getActors();

    model.addAttribute("actor", actor);
    return "admin/actor";
  }

  @RequestMapping(value = "/actor/addA", method = RequestMethod.GET)
  public String actorAddGet(Model model) {
    return "admin/add/addActor";
  }

  @RequestMapping(value = "/actor/modify", method = RequestMethod.GET)
  public String actorModifyGet(Model model, Integer actor_id) {
    ActorVo actor = boardService.getActor(actor_id);

    model.addAttribute("actor", actor);
    return "admin/modify/ModifyActor";
  }

  @RequestMapping(value = "/actor/modify", method = RequestMethod.POST)
  public String actorModifyPost(Model model, ActorVo actorVo) {
    System.out.println(actorVo);
    adminService.modifyActor(actorVo);
    model.addAttribute("actor_id", actorVo.getActor_id());
    return "redirect:/admin/actor/modify";
  }

  @RequestMapping(value = "/director", method = RequestMethod.GET)
  public String directorGet(Model model) {
    return "admin/director";
  }

  @RequestMapping(value = "/director/addD", method = RequestMethod.GET)
  public String directorAddGet(Model model) {
    return "admin/add/addDirector";
  }

  @RequestMapping(value = "/director/modify", method = RequestMethod.GET)
  public String directorModifyGet(Model model, Integer director_id) {
    DirectorVo director = boardService.getDirector(director_id);

    model.addAttribute("director", director);
    return "admin/modify/ModifyDirector";
  }

  @RequestMapping(value = "/director/modify", method = RequestMethod.POST)
  public String directorModifyPost(Model model, DirectorVo directorVo) {
    adminService.modifyDirector(directorVo);
    model.addAttribute("director_id", directorVo.getDirector_id());
    return "redirect:/admin/director/modify";
  }

}
