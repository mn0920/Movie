package kr.min.movie.service;

import java.util.List;

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
  public void addGenre(GenreVo genreVo);
  public void addGenreList(GenreListVo genreListVo);
  
  public void modifyMovie(MovieVo movieVo);
  public void modifyActor(ActorVo actorVo);
  public void modifyDirector(DirectorVo directorVo);
  public void modifyMovieTitle(String title, Integer id);
  
  public void updateGenreList(List<GenreListVo> genreListVo);
  public List<GenreListVo> newGenreList(List<GenreListVo> oriList, List<GenreListVo> delList, List<GenreListVo> list);
  /*public void modifyGenreList(Integer tmp, Integer genre_list);*/
  
  public List<AllActorListVo> getOriActorList(Integer actor_list);
  public List<ActorListVo> newActorList(List<ActorListVo> oriList, List<ActorListVo> modiList, List<ActorListVo> delList, List<ActorListVo> list);
  public void updateActorList(List<ActorListVo> list); /* 현재 이 아이가 위의 세개를 다 같이 해준다. return type List<ActorList> */
  
  public List<AllDirectorListVo> getOriDirectorList(Integer director_list);
  public List<DirectorListVo> newDirectorList(List<DirectorListVo> oriList, List<DirectorListVo> delList, List<DirectorListVo> list);
  public void updateDirectorList(List<DirectorListVo> list);
  
}
