package kr.min.movie.dao;

import kr.min.movie.vo.ActorVo;

import org.apache.ibatis.annotations.Param;

public interface ActorDao {

  public void addActor(@Param("actorVo")ActorVo actorVo);
	
}
