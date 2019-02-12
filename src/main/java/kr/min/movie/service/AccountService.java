package kr.min.movie.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.AccountVo;

public interface AccountService {
	public AccountVo signin(AccountVo accountVo);
	public boolean signup(AccountVo accountVo);
  public AccountVo getAccount(AccountVo user);
	
	public List<AccountVo> getAccounts(HttpServletRequest request, Criteria cri);
	public void setAuthor(HttpServletRequest request, String id, String author);
	public PageMaker getPageMaker(HttpServletRequest request, Criteria cri, int displayPageNum);
	public AccountVo getLoginUser(HttpServletRequest request);
	public boolean isDuplicated(String id);

  public void updatePreferenceInfo(AccountVo accountVo, AccountVo oriUser);
	
	public boolean checkAccount(String id, String email);
	public void updatePw(String id, String pw);
	
	//	아이디와 패스워드를 이용하여, 유저정보를 가져옴
	public void join_Cnt_Up(String id);
	public boolean idCheck(String id);
	public boolean nickCheck(String nickname);
	
	//	정보수정
	public void updateAccountInfo(AccountVo accountVo);
	
	//	아이디 비밀번호 찾기
	public String idSearch(AccountVo accountVo);
	public boolean pwSearch(AccountVo accountVo);
	
	//	어드민에서 유저 리스트처리
	public List<AccountVo> getaccountBoardLists(Criteria cri);
	public PageMaker getaccountPageMaker(Criteria cri, int displayPageNum);
	public void updateAccountAuthorCall(String id, String author, HttpServletRequest request);
	public void updateAccountStatusCall(String id, String status, HttpServletRequest request);
}
