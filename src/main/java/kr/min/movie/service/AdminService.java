package kr.min.movie.service;

import java.util.List;

import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;

public interface AdminService {

  public List<GenreVo> getGenre();
  public List<ActorVo> getActor();
  
  public void addMovie(MovieVo movieVo);
  public void addActor(ActorVo actorVo);
  
}
