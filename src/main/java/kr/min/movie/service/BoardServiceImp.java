package kr.min.movie.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.BoardDao;
import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.ShowMovieVo;
import kr.min.movie.service.MethodClass;

@Service
public class BoardServiceImp implements BoardService {

  @Autowired
  BoardDao boardDao;
  
  MethodClass method = new MethodClass();

  @Override
  public List<ShowMovieVo> getShowMovie(MovieCriteria cri) {
    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();
    List<ShowMovieVo> SMV = boardDao.getShowMovie(cri);

    for (int i = 0; i < SMV.size(); i++) {
      ShowMovieVo smv = new ShowMovieVo();
      Integer tId = SMV.get(i).getId();
      List<ShowMovieVo> asd = boardDao.getMovie(tId);
      smv = method.setMovie(asd);
      showMovieVo.add(smv);
    }

    return showMovieVo;
  }

  @Override
  public MoviePageMaker getPageMaker(MovieCriteria cri, int displayPageNum) {
    int totalCount = boardDao.getCountBoardLists(cri);

    MoviePageMaker pageMaker = method.moviePageMaker(cri, displayPageNum, totalCount);
    
    return pageMaker;
  }

  @Override
  public PageMaker getActorPageMaker(Criteria cri, int displayPageNum) {
    int totalCount = boardDao.getActorCountBoardLists(cri);
    System.out.println("totalCount : " + totalCount + " / 수 : " + cri);
    
    PageMaker pageMaker = method.adPageMaker(cri, displayPageNum, totalCount);
    
    return pageMaker;
  }

  @Override
  public PageMaker getDirectorPageMaker(Criteria cri, int displayPageNum) {
    int totalCount = boardDao.getDirectorCountBoardLists(cri);
    System.out.println("totalCount : " + totalCount + " / 수 : " + cri);
    
    PageMaker pageMaker = method.adPageMaker(cri, displayPageNum, totalCount);

    return pageMaker;
  }

  @Override
  public List<ActorVo> getActors(Criteria cri) {
    return boardDao.getActors(cri);
  }

  @Override
  public List<DirectorVo> getDirectors(Criteria cri) {
    return boardDao.getDirectors(cri);
  }

  @Override
  public ShowMovieVo getMovie(Integer id) {
    ShowMovieVo smv = new ShowMovieVo();
    List<ShowMovieVo> asd = boardDao.getMovie(id);
    smv = method.setMovie(asd);
    return smv;
  }

  @Override
  public ActorVo getActor(Integer actor_id) {
    return boardDao.getActor(actor_id);
  }

  @Override
  public DirectorVo getDirector(Integer director_id) {
    return boardDao.getDirector(director_id);
  }

}
