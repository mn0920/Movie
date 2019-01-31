package kr.min.movie.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.min.movie.service.AccountService;
import kr.min.movie.service.AdminService;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.GenreListVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AccountController {

  @Autowired
  private AccountService accountService;
  @Autowired
  private AdminService adminService;
  
  private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
  
  /**
   * Simply selects the home view to render by returning its name.
   */
  @RequestMapping(value = "/", method = RequestMethod.GET)
  public String homeGet(Integer loginOk, Integer join, Model model) {
    if(loginOk == null)
      loginOk = -1;
    if(join == null)
      join = -1;
    model.addAttribute("loginOk", loginOk);
    model.addAttribute("join", join);
    return "member/login";
  }
  
  @RequestMapping(value = "/", method = RequestMethod.POST)
  public String homepost(AccountVo accountVo, Model model) {
    AccountVo user = accountService.signin(accountVo);
    
    if(user == null) {
      model.addAttribute("loginOk", 0);
      return "redirect:/";
    }
    model.addAttribute("user", user);
    return "redirect:/movie/main";
  }
  
  
  @RequestMapping(value="/join", method = RequestMethod.GET)
  public String signupGet(Model model, Integer join) {
    if(join == null) {
      join = -1;
    }
    model.addAttribute("join", join);
    return "member/join";
  }
  
  @RequestMapping(value="/join", method = RequestMethod.POST)
  public String signupPost(AccountVo accountVo, Model model) {
    if(accountService.signup(accountVo)) {
      model.addAttribute("join", 1);
      return "redirect:/";
    }
    model.addAttribute("join", 0);
    return "redirect:/join";
  }

  @RequestMapping(value ="/dup")
  @ResponseBody
  public Map<Object, Object> idcheck(@RequestBody String id){

      Map<Object, Object> map = new HashMap<Object, Object>();
      
      boolean dup = accountService.isDuplicated(id); 
        
      map.put("dup", dup);
      return map;
  }
  
  @RequestMapping(value="/login", method = RequestMethod.GET)
  public String loginGet() {
    return "member/login";
  }
  
  @RequestMapping(value="/login", method = RequestMethod.POST)
  public String loginPost(String id, String pw) {
    System.out.println("id : " + id);
    System.out.println("pw : " + pw);
    return "redirect:/login";
  }
  
  @RequestMapping(value="/login/joinUs", method = RequestMethod.GET)
  public String loginJoinGet() {
    return "member/introduceLogin";
  }

  
  @RequestMapping(value = "/join/A/cho", method = RequestMethod.GET)
  public String searchActor1Get(Model model) {
    
    List<ActorVo> actor = adminService.getActor();
    
    model.addAttribute("actor", actor);
    return "member/searchActor";
  }
  
  @RequestMapping(value = "/join/D/cho", method = RequestMethod.GET)
  public String searchDirector1Get(Model model) {
    
    List<DirectorMovieVo> director = adminService.getDirectorOneMovie();
    
    model.addAttribute("director", director);
    
    return "member/searchDirector";
  }
  
  @RequestMapping(value = "/join/G/cho", method = RequestMethod.GET)
  public String searchGenreGet(GenreVo genreVo,  Model model) {
    List<GenreVo> genre = adminService.getGenre();
    
    model.addAttribute("genre", genre);
    return "member/searchGenre";
  }
  
}
