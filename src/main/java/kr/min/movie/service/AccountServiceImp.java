package kr.min.movie.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.AccountDao;
import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.AccountVo;

@Service
public class AccountServiceImp implements AccountService {

  @Autowired
  AccountDao accountDao;
  @Autowired
  BCryptPasswordEncoder passwordEncoder;

  @Override
  public AccountVo signin(AccountVo accountVo) {
    AccountVo user = accountDao.getAccount(accountVo.getId());
    if (user == null || !passwordEncoder.matches(accountVo.getPw(), user.getPw()))
      return null;
    return user;
  }

  @Override
  public boolean signup(AccountVo accountVo) {
    // DB에서 email값에 null값 허용하지 않는 경우만 사용가능
    String user = accountDao.getEmail(accountVo.getId());
    if (user != null)
      return false;
    String encPw = passwordEncoder.encode(accountVo.getPw());
    accountVo.setPw(encPw);
    accountDao.setAccount(accountVo);
    return true;
  }

  @Override
  public AccountVo getAccount(AccountVo user) {
    String uId = user.getId();
    return accountDao.getAccount(uId);
  }

  @Override
  public List<AccountVo> getAccounts(HttpServletRequest request, Criteria cri) {
    // 로그인한 아이디를 제외하고, super admin 권한을 가지고 있는 사람을 제외한 나머지를 가지고 오는 것
    AccountVo loginUser = getLoginUser(request);
    return accountDao.getAccountLists(cri, loginUser.getId());
  }

  @Override
  public void setAuthor(HttpServletRequest request, String id, String author) {
    HttpSession session = request.getSession();
    AccountVo loginUser = (AccountVo) session.getAttribute("user");
    System.out.println(author);
    // 로그인한 아이디와 수정하려는 아이디가 같으면 세션에 있는 user 정보를 지우고 새로운 user 정보로 설정한다.
    if (loginUser != null && loginUser.getId().equals(id)) {
      session.removeAttribute("user");
      loginUser.setAuthor(author);
      session.setAttribute("user", loginUser);
    }
    accountDao.setAuthor(id, author);
  }

  @Override
  public PageMaker getPageMaker(HttpServletRequest request, Criteria cri, int displayPageNum) {
    AccountVo loginUser = getLoginUser(request);
    int totalCount = accountDao.getTotalCount(loginUser.getId());
    PageMaker pm = new PageMaker();
    pm.setCriteria(cri);
    pm.setDisplayPageNum(displayPageNum);
    pm.setTotalCount(totalCount);
    return pm;
  }

  @Override
  public AccountVo getLoginUser(HttpServletRequest request) {
    System.out.println("request : " + request);
    HttpSession session = request.getSession();
    AccountVo loginUser = (AccountVo) session.getAttribute("user");
    System.out.println("loginUser : " + loginUser);
    return loginUser;
  }

  @Override
  public boolean isDuplicated(String id) {
    int cnt = accountDao.getUserCount(id);
    if (cnt == 0)
      return false;
    else
      return true;
  }

  @Override
  public boolean checkAccount(String id, String email) {
    AccountVo user = accountDao.getAccount(id);
    if (user != null && user.getEmail().equals(email))
      return true;
    else
      return false;
    // . 으로 연달아서 사용하는 것을 체이닝기법이라고 한다.
  }

  @Override
  public void updatePw(String id, String pw) {
    AccountVo user = accountDao.getAccount(id);
    String encPw = passwordEncoder.encode(pw);
    user.setPw(encPw);
    accountDao.modifyAccount(user);
  }

  @Override
  public boolean idCheck(String id) {
    int cnt = accountDao.getIdCnt(id);
    if (cnt == 0) {
      return false;
    } else
      return true;
  }

  @Override
  public boolean nickCheck(String nickname) {
    int cnt = accountDao.getNickCnt(nickname);
    if (cnt == 0) {
      return false;
    } else
      return true;
  }

  @Override
  public List<AccountVo> getaccountBoardLists(Criteria cri) {
    return accountDao.getaccountBoardLists(cri);
  }

  @Override
  public PageMaker getaccountPageMaker(Criteria cri, int displayPageNum) {
    int totalCount = accountDao.getaccountBoardListCount(cri);

    PageMaker pageMaker = new PageMaker();
    pageMaker.setCriteria(cri);
    pageMaker.setDisplayPageNum(displayPageNum);
    pageMaker.setTotalCount(totalCount);

    return pageMaker;
  }

  @Override
  public void updateAccountAuthorCall(String id, String author, HttpServletRequest request) {
    HttpSession session = request.getSession();
    AccountVo loginUser = (AccountVo) session.getAttribute("user");
    // 로그인한 아이디와 수정하려는 아이디와 같으면
    // 세션에 있는 user 정보를 지우고 새로운 user 정보로 설정한다.
    if (loginUser != null & loginUser.getId().equals(id)) {
      session.removeAttribute("user");
      loginUser.setAuthor(author);
      session.setAttribute("user", loginUser);
    }
    accountDao.updateAccountAuthorCall(id, author, loginUser);
  }

  @Override
  public void updateAccountStatusCall(String id, String status, HttpServletRequest request) {
    HttpSession session = request.getSession();
    AccountVo loginUser = (AccountVo) session.getAttribute("user");
    // 로그인한 아이디와 수정하려는 아이디와 같으면
    // 세션에 있는 user 정보를 지우고 새로운 user 정보로 설정한다.
    if (loginUser != null & loginUser.getId().equals(id)) {
      session.removeAttribute("user");
      loginUser.setStatus(status);
      session.setAttribute("user", loginUser);
    }
    accountDao.updateAccountStatusCall(id, status, loginUser);
  }

  @Override
  public String idSearch(AccountVo accountVo) {
    return accountDao.idSearch(accountVo);
  }

  @Override
  public boolean pwSearch(AccountVo accountVo) {
    AccountVo user = accountDao.getAccount(accountVo.getId());
    if (user != null && user.getEmail().endsWith(accountVo.getEmail()))
      return true;
    else
      return false;
  }

  @Override
  public void updateAccountInfo(AccountVo accountVo) {
    String encPw;// 암호화한 패스워드를 담을 변수
    encPw = passwordEncoder.encode(accountVo.getPw());// 암호화한 패스워드를 담음
    accountVo.setPw(encPw);// 암호화한 변수를 set
    accountDao.updateAccountInfo(accountVo);
  }

  @Override
  public void join_Cnt_Up(String id) {
    accountDao.join_Cnt_Up(id);
  }

  @Override
  public void updatePreferenceInfo(AccountVo accountVo, AccountVo oriUser) {
    String id = oriUser.getId();
    String nickname = oriUser.getNickname();
    Integer u_favorite_genre_id = oriUser.getU_favorite_genre_id();
    String u_favorite_genre_name = oriUser.getU_favorite_genre_name();
    Integer u_favorite_actor_id = oriUser.getU_favorite_actor_id();
    String u_favorite_actor_name = oriUser.getU_favorite_actor_name();
    Integer u_favorite_director_id = oriUser.getU_favorite_director_id();
    String u_favorite_director_name = oriUser.getU_favorite_director_name();
    String u_preference = oriUser.getU_preference();
    System.out.println("nickname : " + nickname);
    System.out.println("u_favorite_genre_id : " + u_favorite_genre_id);
    System.out.println("u_favorite_genre_name : " + u_favorite_genre_name);
    System.out.println("u_favorite_actor_id : " + u_favorite_actor_id);
    System.out.println("u_favorite_actor_name : " + u_favorite_actor_name);
    System.out.println("u_favorite_director_id : " + u_favorite_director_id);
    System.out.println("u_favorite_director_name : " + u_favorite_director_name);
    System.out.println("u_preference : " + u_preference);
    
    System.out.println("1 accountVo : " + accountVo);
    if(accountVo.getNickname() == null) accountVo.setNickname(nickname);
    if(accountVo.getU_favorite_genre_id() == null) accountVo.setU_favorite_genre_id(u_favorite_genre_id);
    if(accountVo.getU_favorite_genre_name().equals("") || accountVo.getU_favorite_genre_name().equals(null)) accountVo.setU_favorite_genre_name(u_favorite_genre_name);
    if(accountVo.getU_favorite_actor_id() == null) accountVo.setU_favorite_actor_id(u_favorite_actor_id);
    if(accountVo.getU_favorite_actor_name().equals("")) accountVo.setU_favorite_actor_name(u_favorite_actor_name);
    if(accountVo.getU_favorite_director_id() == null) accountVo.setU_favorite_director_id(u_favorite_director_id);
    if(accountVo.getU_favorite_director_name().equals("")) accountVo.setU_favorite_director_name(u_favorite_director_name);
    if(accountVo.getU_preference().equals("")) accountVo.setU_preference(u_preference);
    accountVo.setId(id);
    
    System.out.println("2 accountVo : " + accountVo);
    
    accountDao.updatePreferenceInfo(accountVo);
  }

}
