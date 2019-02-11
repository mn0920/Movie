package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.AllActorListVo;
import kr.min.movie.vo.AllDirectorListVo;
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
  public void addActor(@Param("actorVo")ActorVo actorVo);
  public void addDirector(@Param("directorVo")DirectorVo directorVo);
  public void addGenre(@Param("genreVo")GenreVo genreVo);
  
  public void addActorList(@Param("actorListVo")ActorListVo actorListVo);
  public void addDirectorList(@Param("directorListVo")DirectorListVo directorListVo);
  public void addGenreList(@Param("genreListVo")GenreListVo genreListVo);

  public void updateMovie(@Param("movieVo")MovieVo movieVo);
  
  public void modifyMovie(@Param("movieVo")MovieVo movieVo);
  public void modifyMovieTitle(@Param("title")String title, @Param("id")Integer id);
  public void modifyActor(@Param("actorVo")ActorVo actorVo);
  public void modifyDirector(@Param("directorVo")DirectorVo directorVo);
  
  public List<AllActorListVo> getShowOriActorList(@Param("actor_list")Integer actor_list);
  public List<ActorListVo> getOriActorList(@Param("actor_list")Integer actor_list);
  public void modifyActorCList(@Param("actorListVo")ActorListVo actorListVo);
  public void delActorList(@Param("actorListVo")ActorListVo del);

  public void modifyDirectorList(@Param("directorListVo")DirectorListVo directorListVo);
  public List<AllDirectorListVo> getShowOriDirectorList(@Param("director_list")Integer director_list);
  public List<DirectorListVo> getOriDirectorList(@Param("director_list")Integer director_list);
  public void delDirectorList(@Param("directorListVo")DirectorListVo del);

  public void modifyGenreList(@Param("genreListVo")GenreListVo genreListVo);
  public List<GenreListVo> getOriGenreList(@Param("genre_list")Integer genre_list);
  public void delGenreList(@Param("genreListVo")GenreListVo genreListVo);
  
}
