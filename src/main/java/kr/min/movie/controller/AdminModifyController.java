package kr.min.movie.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.min.movie.service.AdminService;
import kr.min.movie.service.BoardService;
import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorMutiListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorMutiListVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreListVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;

@Controller
@RequestMapping(value = "/admin")
public class AdminModifyController {

  private static final Logger logger = LoggerFactory.getLogger(AdminModifyController.class);

  @Autowired
  private AdminService adminService;
  @Autowired
  private BoardService boardService;
  @Resource
  private String uploadPath;

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

  @RequestMapping(value = "/MM/modify/seaM", method = RequestMethod.GET)
  public String modifySearchMovieGet(Model model, Integer state) {
    if(state == null) {
      state = 0;
    }
    List<MovieVo> movie = adminService.getMovie();
    
    model.addAttribute("movie", movie);
    model.addAttribute("state", state);
    
    return "admin/modify/ModifySearchMovie";
  }
  
  @RequestMapping(value = "/MM/modify/seaM", method = RequestMethod.POST)
  public String modifySearchMoviePost(Model model, String title, Integer id) {
    
    adminService.modifyMovieTitle(title, id);
    return "admin/modify/ModifySearchMovie";
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

  
  @RequestMapping(value = "/MM/modify/seaA", method = RequestMethod.GET)
  public String modifySearchActorGet(Model model) {
    ActorMutiListVo actorMutiListVo = new ActorMutiListVo();
    model.addAttribute("actorMutiListVo", actorMutiListVo);
    return "admin/modify/ModifySearchActor";
  }
  
  @RequestMapping(value = "/MM/modify/seaA", method = RequestMethod.POST)
  public String modifySearchActorPost(@ModelAttribute ActorMutiListVo actorMutiListVo) {

    List <ActorListVo> actorListsVo = actorMutiListVo.getActorMutiListVo();
    adminService.modifyActorList(actorListsVo);
    /*for (ActorListVo actorListVo : actorListsVo) {
      adminService.modifyActorList(actorListVo);
    }*/
    
    return "admin/modify/ModifySearchActor";
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
  
  
  @RequestMapping(value = "/MM/modify/seaD", method = RequestMethod.GET)
  public String modifySearchDirectorGet(Model model) {
    DirectorMutiListVo directorMutiListVo = new DirectorMutiListVo();
    model.addAttribute("directorMutiListVo", directorMutiListVo);
    return "admin/modify/ModifySearchDirector";
  }
  
  @RequestMapping(value = "/MM/modify/seaD", method = RequestMethod.POST)
  public String modifySearchDirectorPost(@ModelAttribute DirectorMutiListVo directorMutiListVo) {

    List <DirectorListVo> directorListsVo = directorMutiListVo.getDirectorMutiListVo();
    
    for (DirectorListVo directorListVo : directorListsVo) {
      adminService.modifyDirectorList(directorListVo);
    }
    return "admin/modify/ModifySearchDirector";
  }

  

  /*
   * 만약 버튼을 누른 횟수가 i>1이라면 update문 불러오는 것으로 변경  
   * 부모창에다가 카운트 변수 하나 놓고 버튼이 눌리때마다 ++, 그것을 자식 창으로 넘기고,
   * 자식창에서 submit으로 넘길때, 그 숫자가 1이상이라면 update문을 부르는 Dao로 설정*/
  @RequestMapping(value = "/MM/modify/seaG", method = RequestMethod.GET)
  public String modifySearchGenreGet(GenreVo genreVo,  Model model) {
    List<GenreVo> genre = adminService.getGenre();
    
    model.addAttribute("genre", genre);
    return "admin/modify/ModifySearchGenre";
  }
  
  @RequestMapping(value = "/MM/modify/seaG", method = RequestMethod.POST)
  public String searchGenrePost(Integer[] checkList, Integer genre_list) {
    Integer gl = genre_list;
    if(checkList != null){
      for(Integer tmp : checkList) {
        GenreListVo genreListVo = new GenreListVo();
        genreListVo.setGenre_id(tmp);
        genreListVo.setGenre_list(gl);
        adminService.modifyGenreList(genreListVo);
      }
    }
    return "admin/modify/ModifySearchGenre";
  }

}
