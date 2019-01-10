package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.vo.MovieVo;

public interface BoardDao {

  public void addActor(@Param("m_actor_list")String[] m_actor_list);
  public void addDirector(@Param("m_director_list")String[] m_director_list);
  public void searchActor(@Param("actor")String[] actor);
  public void searchDirector(@Param("m_director_list")String[] m_director_list);
	
}
