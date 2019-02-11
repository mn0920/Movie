package kr.min.movie.service;

import java.util.List;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.ActorShowVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorShowVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.ShowMovieVo;

public interface BoardService {

  /*public void searchActor(String[] actor);*/
  public List<ShowMovieVo> getShowMovie(MovieCriteria cri);
  public List<ShowMovieVo> getMovieByGenreLists(MovieCriteria cri, Integer genre_id);
  public List<ShowMovieVo> getRecommendMovie(AccountVo user);
  /*public List<ShowMovieVo> getShowMovie();*/
  public List<ActorVo> getActors(Criteria cri);
  public List<DirectorVo> getDirectors(Criteria cri);

  public ShowMovieVo getMovie(Integer id);
  public ActorShowVo getMovieByActorWorkLists(Integer actor_id);
  public ActorShowVo getActor(Integer actor_id);
  public DirectorShowVo getDirector(Integer director_id);
  public MoviePageMaker getPageMaker(MovieCriteria cri, int displayPageNum);
  public MoviePageMaker getPageMakerByGenre(MovieCriteria cri, int displayPageNum, Integer genre_id);
  public PageMaker getActorPageMaker(Criteria cri, int displayPageNum);
  public PageMaker getDirectorPageMaker(Criteria cri, int displayPageNum);

  public void like(Integer movie_id, String account_id);
  public String getGenreName(Integer genre_id);
}
