package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;

public interface BoardDao {

  public void searchActor(@Param("actorVo")ActorVo actorVo);
  public void searchDirector(@Param("directorVo")DirectorVo directorVo);
  public List<ShowMovieVo> getShowMovie();
  public List<ActorVo> getActors();
  public List<DirectorVo> getDirectors();
  public List<ShowMovieVo> getMovie(@Param("id")Integer id);
  public ActorVo getActor(@Param("actor_id")Integer actor_id);
  public DirectorVo getDirector(@Param("director_id")Integer director_id);
	
}
