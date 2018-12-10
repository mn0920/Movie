package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.BoardVo;

public interface AccountDao {
	public String getEmail(String id);
	public String getPw(String id);
	//쿼리를 호출하기 위해서 만드는 것이고, interface로 만든다.
	public void setAccount(AccountVo accountVo);
	public AccountVo getAccount(String id);
	
	public void setAuthor(@Param("id") String id, @Param("author") String author);
	public List<AccountVo> getAccountLists(@Param("cri")Criteria cri, @Param("id")String id);
	public int getTotalCount(@Param("id")String id);
  public int getUserCount(@Param("id")String id);
  public AccountVo changePw(@Param("id")String id, @Param("pw")String pw);
  public void modifyAccount(@Param("user")AccountVo user);
}
