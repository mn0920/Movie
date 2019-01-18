package kr.min.movie.service;

import java.util.List;

import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;
import kr.min.movie.vo.actorList.ActorListVo1;

public interface AdminService {

  public List<MovieVo> getMovie();
  public MovieVo getMovieId();
  public List<ShowMovieVo> getMovieForUser();
  public List<GenreVo> getGenre();
  public List<ActorVo> getActor();
  public List<DirectorVo> getDirector();
  public List<DirectorMovieVo> getDirectorOneMovie();
  
  public void addMovie(MovieVo movieVo);
  public void addActor(ActorVo actorVo);
  public void addActorList(ActorListVo1 actorListVo);
  /*public void addActorList(List<ActorListVo> actorListVo);*/
  public void addDirector(DirectorVo directorVo);
  
}
