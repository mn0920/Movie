package kr.min.movie.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.service.AccountService;
import kr.min.movie.service.AdminService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.ActorShowVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorShowVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.ShowMovieVo;

@Controller
@RequestMapping(value = "/m")
public class BoardController {
  @Autowired
  private BoardService boardService;
  @Autowired
  private AdminService adminService;
  /* bean에 등록된 Resource 중에서 id가 uploadPath를 가져옴 */
  @Autowired
  private AccountService accountService;

  @RequestMapping(value = "/main", method = RequestMethod.GET)
  public String mainGet(HttpServletRequest request, Model model, MovieCriteria cri, Integer alert, Integer genre_id) {
    System.out.println("GET button click : " + genre_id);
    if (alert == null)
      alert = -1;
    AccountVo user = accountService.getLoginUser(request);
    List<GenreVo> genre = adminService.getGenre();

    MoviePageMaker pageMaker = new MoviePageMaker();
    List<ShowMovieVo> movie = new ArrayList<ShowMovieVo>();
    if (genre_id != null) {
      pageMaker = boardService.getPageMakerByGenre(cri, 10, genre_id);
      movie = boardService.getMovieByGenreLists(cri, genre_id);
      String genre_name = boardService.getGenreName(genre_id);
      model.addAttribute("genre_name", genre_name);
    } else {
      pageMaker = boardService.getPageMaker(cri, 10);
      movie = boardService.getShowMovie(cri);
    }

    model.addAttribute("alert", alert);
    model.addAttribute("movie", movie);
    model.addAttribute("genre", genre);
    model.addAttribute("pageMaker", pageMaker);
    model.addAttribute("user", user);

    return "movie/main";
  }

  @RequestMapping(value = "/main", method = RequestMethod.POST)
  public String mainPost(HttpServletRequest request, Model model, MovieCriteria cri, Integer alert, Integer genre_id) {
    System.out.println("POST button click : " + genre_id);
    model.addAttribute("genre_id", genre_id);

    return "redirect:movie/m/main";
  }

  @RequestMapping(value = "/A", method = RequestMethod.GET)
  public String actorGet(Model model, Criteria cri) {
    PageMaker pageMaker = boardService.getActorPageMaker(cri, 10);
    List<ActorVo> actor = boardService.getActors(cri);

    model.addAttribute("actor", actor);
    model.addAttribute("pageMaker", pageMaker);
    return "movie/actor";
  }

  @RequestMapping(value = "/D", method = RequestMethod.GET)
  public String directorGet(Model model, Criteria cri) {
    PageMaker pageMaker = boardService.getDirectorPageMaker(cri, 10);
    List<DirectorVo> director = boardService.getDirectors(cri);

    model.addAttribute("director", director);
    model.addAttribute("pageMaker", pageMaker);
    return "movie/director";
  }

  @RequestMapping(value = "/my", method = RequestMethod.GET)
  public String myGet(HttpServletRequest request, Model model, Criteria cri) {
    AccountVo user = accountService.getLoginUser(request);
    if (user == null) {
      model.addAttribute("alert", 0);
      return "redirect:/m/main";
    }
    AccountVo setUser = accountService.getAccount(user);
    model.addAttribute("user", setUser);
    return "movie/my";
  }

  @RequestMapping(value = "/R", method = RequestMethod.GET)
  public String recommendGet(Model model, HttpServletRequest request) {
    AccountVo user = accountService.getLoginUser(request);
    if (user == null) {
      model.addAttribute("alert", 1);
      return "redirect:/m/main";
    }
    AccountVo setUser = accountService.getAccount(user);

    List<ShowMovieVo> movie = boardService.getRecommendMovie(setUser);

    model.addAttribute("movie", movie);

    return "movie/recommend";
  }

  @RequestMapping(value = "/m/detail", method = RequestMethod.GET)
  public String mDetailGet(Model model, HttpServletRequest request, Integer id) {
    ShowMovieVo movie = boardService.getMovie(id);
    /*
     * AccountVo user = accountService.getLoginUser(request); String accountId =
     * user.getId(); boardService.like(id, accountId);
     */

    model.addAttribute("movie", movie);
    return "movie/detail/mDetail";
  }

  @RequestMapping(value = "/A/detail", method = RequestMethod.GET)
  public String aDetailGet(Model model, Integer actor_id) {
    ActorShowVo actor = boardService.getActor(actor_id);
    /*ActorShowVo actorWork = boardService.getMovieByActorWorkLists(actor_id);*/
    System.out.println("actor : " + actor);
    /*model.addAttribute("actorWork", actorWork);*/
    model.addAttribute("actor", actor);
    return "movie/detail/aDetail";
  }

  @RequestMapping(value = "/D/detail", method = RequestMethod.GET)
  public String dDetailGet(Model model, Integer director_id) {
    System.out.println(director_id);
    DirectorShowVo director = boardService.getDirector(director_id);

    model.addAttribute("director", director);
    return "movie/detail/dDetail";
  }

}
