package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.vo.ActorShowVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorShowVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreMovieVo;
import kr.min.movie.vo.LikeVo;
import kr.min.movie.vo.ShowMovieVo;

public interface BoardDao {

  public void searchActor(@Param("actorVo")ActorVo actorVo);
  public void searchDirector(@Param("directorVo")DirectorVo directorVo);
  public List<ShowMovieVo> getShowMovie(@Param("cri")MovieCriteria cri);
  public List<GenreMovieVo> getMovieByGenreLists(@Param("cri")MovieCriteria cri, @Param("genre_id")Integer genre_id);

  public List<ActorVo> getActors(@Param("cri")Criteria cri);
  public List<DirectorVo> getDirectors(@Param("cri")Criteria cri);
  public List<ShowMovieVo> getMovie(@Param("id")Integer id);
  
  public ActorVo getActor(@Param("actor_id")Integer actor_id);
  public DirectorVo getDirector(@Param("director_id")Integer director_id);
  /*public DirectorShowVo getMovieByDirectorLists(@Param("director_id")Integer director_id);*/
  public ActorShowVo getMovieByActorLists(@Param("actor_id")Integer actor_id);
  public ActorShowVo getMovieByActorWorkLists(@Param("actor_id")Integer actor_id);
  public DirectorShowVo getMovieByDirectorLists(@Param("director_id")Integer director_id);
  
  public int getCountBoardLists(@Param("cri")MovieCriteria cri);
  public int getCountBoardListsByGenre(@Param("cri")MovieCriteria cri, @Param("genre_id")Integer genre_id);
  public int getCountBoardListsByActor(@Param("cri")MovieCriteria cri, @Param("actor_id")Integer actor_id);
  public int getCountBoardListsByDirector(@Param("cri")MovieCriteria cri, @Param("director_id")Integer director_id);
  
  /*for pageMaker*/
  public int getActorCountBoardLists(@Param("cri")Criteria cri);
  public int getDirectorCountBoardLists(@Param("cri")Criteria cri);
  
  public List<ShowMovieVo> getShowMovieByActor(@Param("aId")Integer aId, @Param("dId")Integer dId, @Param("gId")Integer gId);
  public List<ShowMovieVo> getShowMovieByDirector(@Param("aId")Integer aId, @Param("dId")Integer dId, @Param("gId")Integer gId);
  public List<ShowMovieVo> getShowMovieByGenre(@Param("aId")Integer aId, @Param("dId")Integer dId, @Param("gId")Integer gId);
  
  public void like(@Param("movie_id")Integer movie_id, @Param("account_id")String account_id);
  public String getGenre(@Param("genre_id")Integer genre_id);
    
}
