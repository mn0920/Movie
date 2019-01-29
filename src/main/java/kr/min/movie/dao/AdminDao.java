package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreListVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;

public interface AdminDao {

  public List<MovieVo> getMovie();
  public int getMovieId();
  public List<ShowMovieVo> getShowMovie();
	public List<GenreVo> getGenre();
  public List<ActorVo> getActor();
  public List<DirectorVo> getDirector();
  public List<DirectorMovieVo> getDirectorOneMovie();
  public void addMovie(@Param("movieVo")MovieVo movieVo);
  public void updateMovie(@Param("movieVo")MovieVo movieVo);
  public void addActor(@Param("actorVo")ActorVo actorVo);
  public void addActorList(@Param("actorListVo")ActorListVo actorListVo);
  public void addDirector(@Param("directorVo")DirectorVo directorVo);
  public void addDirectorList(@Param("directorListVo")DirectorListVo directorListVo);
  public void addGenreList(@Param("genreListVo")GenreListVo genreListVo);
  public void modifyMovie(@Param("movieVo")MovieVo movieVo);
  public void modifyActor(@Param("actorVo")ActorVo actorVo);
  public void modifyDirector(@Param("directorVo")DirectorVo directorVo);
  public void modifyMovieTitle(@Param("title")String title, @Param("id")Integer id);
  public void modifyActorList(@Param("actorListVo")ActorListVo actorListVo);
  public void modifyDirectorList(@Param("directorListVo")DirectorListVo directorListVo);
  public void modifyGenreList(@Param("genreListVo")GenreListVo genreListVo);
  
}
