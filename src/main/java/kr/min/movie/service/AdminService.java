package kr.min.movie.service;

import java.util.List;

import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreListVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;

public interface AdminService {

  public List<MovieVo> getMovie();
  public MovieVo getMovieId();
  public List<ShowMovieVo> getMovieForUser();
  public List<GenreVo> getGenre();
  public List<ActorVo> getActor();
  public List<DirectorVo> getDirector();
  public List<DirectorMovieVo> getDirectorOneMovie();
  
  public void addMovie(MovieVo movieVo);
  public void addMovie2(MovieVo movieVo);
  public void addActor(ActorVo actorVo);
  public void addActorList(ActorListVo actorListVo);
  public void addDirector(DirectorVo directorVo);
  public void addDirectorList(DirectorListVo directorListVo);
  public void addGenreList(GenreListVo genreListVo);
  
  public void modifyMovie(MovieVo movieVo);
  public void modifyActor(ActorVo actorVo);
  public void modifyDirector(DirectorVo directorVo);
  public void modifyMovieTitle(String title, Integer id);
  public void modifyActorList(ActorListVo actorListVo);
  public void modifyDirectorList(DirectorListVo directorListVo);
  public void modifyGenreList(GenreListVo genreListVo);
  
}
