package kr.min.movie.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.AccountDao;
import kr.min.movie.dao.BoardDao;
import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.ShowMovieVo;

@Service
public class BoardServiceImp implements BoardService {

  @Autowired
  BoardDao boardDao;
  @Autowired
  AccountDao accountDao;

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
  public List<ShowMovieVo> getRecommendMovie(AccountVo user) {
    System.out.println("user : " + user);

    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();
    List<ShowMovieVo> SMV1 = result(user);
    showMovieVo = method.setMovieList(SMV1);

    return showMovieVo;
  }

  public List<ShowMovieVo> result(AccountVo user) {
    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();

    Integer aId = user.getU_favorite_actor_id();
    Integer dId = user.getU_favorite_director_id();
    Integer gId = user.getU_favorite_genre_id();
    String u_preference = user.getU_preference();
    String[] array = u_preference.split(",");
    System.out.println("0 : " + array[0] + ", 1 : " + array[1]);
    System.out.println("aId : " + aId + ", dId : " + dId + ", gId : " + gId);
    if (array[0] == "C") {
      if (array[1].equals("A")) {
        showMovieVo = boardDao.getShowMovieByActor(aId, dId, gId);
      } else if (array[1].equals("D")) {
        showMovieVo = boardDao.getShowMovieByDirector(aId, dId, gId);
      } else if (array[1].equals("G")) {
        showMovieVo = boardDao.getShowMovieByGenre(aId, dId, gId);
      }
    } else {
      if (array[0].equals("A")) {
        showMovieVo = boardDao.getShowMovieByActor(aId, dId, gId);
      } else if (array[0].equals("D")) {
        showMovieVo = boardDao.getShowMovieByDirector(aId, dId, gId);
      } else if (array[0].equals("G")) {
        showMovieVo = boardDao.getShowMovieByGenre(aId, dId, gId);
      }
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
