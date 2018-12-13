package kr.min.movie.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import kr.min.movie.vo.AccountVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AccountController {

  @Autowired
  private AccountService accountService;
  
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
  
/*  @RequestMapping(value="/signout")
    public String signout(HttpServletRequest request) {
      HttpSession session = request.getSession();
      session.removeAttribute("user");
      return "redirect:/";
  }*/
	
}
