package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;

public interface AdminDao {

  public List<MovieVo> getMovie();
	public List<GenreVo> getGenre();
  public List<ActorVo> getActor();
  public List<DirectorVo> getDirector();
  public List<DirectorMovieVo> getDirectorOneMovie();
  public void addMovie(@Param("movieVo")MovieVo movieVo);
  public void addActor(@Param("actorVo")ActorVo actorVo);
  public void addDirector(@Param("directorVo")DirectorVo directorVo);
  
}
