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

@Controller
@RequestMapping(value = "/admin")
public class AdminAddController {

  private static final Logger logger = LoggerFactory.getLogger(AdminAddController.class);

  @Autowired
  private AdminService adminService;
  @Resource
  private String uploadPath;

  @RequestMapping(value = "/movie/addM", method = RequestMethod.GET)
  public String addMovieGet(HttpServletRequest request, Model model) {
    HttpSession session = request.getSession();
    
    MovieVo movie = adminService.getMovieId();
    
    model.addAttribute("movie", movie);
    return "admin/add/addMovie";
  }
  
  @RequestMapping(value = "/movie/addM", method = RequestMethod.POST)
  public String addMoviePost(MovieVo movieVo) {
    
    System.out.println("1 : "+movieVo);
    adminService.addMovie2(movieVo);
    System.out.println("2 : "+movieVo);
    
    return "redirect:/admin/movie/addM";
  }
  

  @RequestMapping(value = "/MM/seaM", method = RequestMethod.GET)
  public String searchMovieGet(Model model, Integer state) {
    if(state == null) {
      state = 0;
    }
    
    List<MovieVo> movie = adminService.getMovie();
    
    model.addAttribute("movie", movie);
    model.addAttribute("state", state);
    
    return "admin/search/searchMovie";
  }
  
  @RequestMapping(value = "/MM/seaM", method = RequestMethod.POST)
  public String searchMoviePost(Model model, MovieVo movieVo) {
    
    movieVo.setRate("");
    movieVo.setSynopsis("");
    adminService.addMovie(movieVo);
    return "admin/search/searchMovie";
  }


  
  @RequestMapping(value = "/MM/seaA", method = RequestMethod.GET)
  public String searchActorGet(Model model) {
    ActorMutiListVo actorMutiListVo = new ActorMutiListVo();
    model.addAttribute("actorMutiListVo", actorMutiListVo);
    return "admin/search/searchActor";
  }
  
  @RequestMapping(value = "/MM/seaA", method = RequestMethod.POST)
  public String searchActorPost(@ModelAttribute ActorMutiListVo actorMutiListVo) {

    List <ActorListVo> actorListsVo = actorMutiListVo.getActorMutiListVo();
    
    for (ActorListVo actorListVo : actorListsVo) {
      adminService.addActorList(actorListVo);
    }
    return "admin/search/searchActor";
  }

  
  @RequestMapping(value = "/MM/seaA/cho", method = RequestMethod.GET)
  public String searchActor1Get(Model model) {
    
    List<ActorVo> actor = adminService.getActor();
    
    model.addAttribute("actor", actor);
    return "admin/search/searchActor1";
  }
  
  @RequestMapping(value = "/MM/seaA/cho", method = RequestMethod.POST)
  public String searchActor1Post(Model model) {
    return "admin/search/searchActor1";
  }  
  
  @RequestMapping(value = "/MM/seaA/cho/addA", method = RequestMethod.GET)
  public String addActorGet(Model model, Integer state) {
    if(state == null) {
      state = 0;
    }
    model.addAttribute("state", state);
    return "admin/add/sAddActor";
  }
  
  @RequestMapping(value = "/MM/seaA/cho/addA", method = RequestMethod.POST)
  public String addActorPost(ActorVo actorVo, Model model){
    actorVo.setActor_story("");
    adminService.addActor(actorVo);
    model.addAttribute("state", 1);
    return "redirect:/admin/MM/seaA/cho/addA";
  }

  


  
  
  @RequestMapping(value = "/MM/seaD", method = RequestMethod.GET)
  public String searchDirectorGet(Model model) {
    DirectorMutiListVo directorMutiListVo = new DirectorMutiListVo();
    model.addAttribute("directorMutiListVo", directorMutiListVo);
    return "admin/search/searchDirector";
  }
  
  @RequestMapping(value = "/MM/seaD", method = RequestMethod.POST)
  public String searchDirectorPost(@ModelAttribute DirectorMutiListVo directorMutiListVo) {

    List <DirectorListVo> directorListsVo = directorMutiListVo.getDirectorMutiListVo();
    
    for (DirectorListVo directorListVo : directorListsVo) {
      adminService.addDirectorList(directorListVo);
    }
    return "admin/search/searchDirector";
  }

  
  
  @RequestMapping(value = "/MM/seaD/cho", method = RequestMethod.GET)
  public String searchDirector1Get(Model model) {
    
    List<DirectorMovieVo> director = adminService.getDirectorOneMovie();
    
    model.addAttribute("director", director);
    
    return "admin/search/searchDirector1";
  }
  
  @RequestMapping(value = "/MM/seaD/cho", method = RequestMethod.POST)
  public String searchDirector1Post(Model model, String[] actor) {
    return "admin/search/searchDirector1";
  }  
  
  
  
  @RequestMapping(value = "/MM/seaD/cho/addD", method = RequestMethod.GET)
  public String addDirectorGet(Model model, Integer state) {
    if(state == null) {
      state = 0;
    }
    model.addAttribute("state", state);
    return "admin/add/sAddDirector";
  }
  
  @RequestMapping(value = "/MM/seaD/cho/addD", method = RequestMethod.POST)
  public String addDirectorPost(DirectorVo directorVo, Model model){
    directorVo.setDirector_story("");
    adminService.addDirector(directorVo);
    model.addAttribute("state", 1);
    return "redirect:/admin/MM/seaD/cho/addD";
  }

  
  
  
  
  @RequestMapping(value = "/MM/seaG", method = RequestMethod.GET)
  public String searchGenreGet(GenreVo genreVo,  Model model) {
    List<GenreVo> genre = adminService.getGenre();
    
    model.addAttribute("genre", genre);
    return "admin/search/searchGenre";
  }
  
  @RequestMapping(value = "/MM/seaG", method = RequestMethod.POST)
  public String searchGenrePost(Integer[] checkList, Integer genre_list) {
    Integer gl = genre_list;
    if(checkList != null){
      for(Integer tmp : checkList) {
        GenreListVo genreListVo = new GenreListVo();
        genreListVo.setGenre_id(tmp);
        genreListVo.setGenre_list(gl);
        adminService.addGenreList(genreListVo);
      }
    }
    return "admin/search/searchGenre";
  }

}
