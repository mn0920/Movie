package kr.min.movie.service;

import java.util.List;

import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;

public interface BoardService {

  /*public void searchActor(String[] actor);*/
  public List<ShowMovieVo> getShowMovie();
  public List<ActorVo> getActors();
  public List<DirectorVo> getDirectors();

  public MovieVo getMovie(Integer id);
  public ActorVo getActor(Integer actor_id);
  public DirectorVo getDirector(Integer director_id);

}
