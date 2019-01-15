package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;

public interface AdminDao {
	
	public List<GenreVo> getGenre();
  public List<ActorVo> getActor();
  public List<DirectorMovieVo> getDirector(@Param("name")String name);
  public List<DirectorMovieVo> getDirectorList(@Param("director_id")DirectorMovieVo director_id);
  public List<DirectorMovieVo> getDirectorOneMovie(@Param("director_list")DirectorMovieVo director_list);
  public void addMovie(@Param("movieVo")MovieVo movieVo);
  public void addActor(@Param("actorVo")ActorVo actorVo);
  public void addDirector(@Param("directorVo")DirectorVo directorVo);
  
  /*
   * @Param("director_id")DirectorMovieVo director_id
   * @Param("director_list")DirectorMovieVo director_list
   * */
  
  
}