package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.ShowMovieVo;

public interface BoardDao {

  public void searchActor(@Param("actorVo")ActorVo actorVo);
  public void searchDirector(@Param("directorVo")DirectorVo directorVo);
  public List<ShowMovieVo> getShowMovie(@Param("cri")MovieCriteria cri);
  public List<ShowMovieVo> getShowMovie1();
  /*public List<ShowMovieVo> getShowMovie();*/
  public List<ActorVo> getActors(@Param("cri")Criteria cri);
  public List<DirectorVo> getDirectors(@Param("cri")Criteria cri);
  public List<ShowMovieVo> getMovie(@Param("id")Integer id);
  public ActorVo getActor(@Param("actor_id")Integer actor_id);
  public DirectorVo getDirector(@Param("director_id")Integer director_id);
  public int getCountBoardLists(@Param("cri")MovieCriteria cri);
  public int getActorCountBoardLists(@Param("cri")Criteria cri);
  public int getDirectorCountBoardLists(@Param("cri")Criteria cri);
	
}
