package kr.min.movie.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.BoardDao;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;

@Service
public class BoardServiceImp implements BoardService {

  @Autowired
  BoardDao boardDao;

  @Override
  public List<ShowMovieVo> getShowMovie() {

    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();

    List<ShowMovieVo> SMV = boardDao.getShowMovie();
    ShowMovieVo tmp = SMV.get(0);
    Integer tId = 0;
    Integer nId = tmp.getId();
    String title = tmp.getTitle();
    String rate = tmp.getRate();
    Integer running_time = tmp.getRunning_time();
    String open_date = tmp.getOpen_date();
    String grade = tmp.getGrade();
    String synopsis = tmp.getSynopsis();
    String poster = tmp.getPoster();

    String aa = "", aaa = "";
    String dd = "", ddd = "";
    String gg = "", ggg = "";
    String cast = "", c_name = "";
    Integer j = 0;

    for (int i = 0; i < SMV.size(); i++) {
      tmp = SMV.get(i);
      tId = tmp.getId();
      if (tId == nId) {
        if (!(aaa.equals(tmp.getActor_name()))) {
          aa = aa + tmp.getActor_name() + ", ";
          aaa = tmp.getActor_name();

          cast = cast + tmp.getCast() + ", ";
          c_name = c_name + tmp.getC_name() + ", ";
        }
        if (!(ddd.equals(tmp.getDirector_name()))) {
          dd = dd + tmp.getDirector_name() + ", ";
          ddd = tmp.getDirector_name();
        }
        if (!(ggg.equals(tmp.getGenre_name()))) {
          gg = gg + tmp.getGenre_name() + ", ";
          ggg = tmp.getGenre_name();
        }
      }
      if (tId != nId) {
        String[] genre = gg.split(", ");
        Arrays.sort(genre);
        String wo = "";
        gg = "";
        for (String gGg : genre) {
          if (!(gGg.equals(wo))) {
            wo = gGg;
            gg += wo + ", ";
          }
        }

        ShowMovieVo smv = new ShowMovieVo();
        smv.setId(nId);
        smv.setTitle(title);
        smv.setRate(rate);
        smv.setRunning_time(running_time);
        smv.setOpen_date(open_date);
        smv.setGrade(grade);
        smv.setSynopsis(synopsis);
        smv.setPoster(poster);

        smv.setActor_list(tmp.getActor_list());
        smv.setActor_id(0);
        smv.setActor_name(aa);
        smv.setCast(cast);
        smv.setC_name(c_name);
        smv.setDirector_name(dd);
        smv.setDirector_id(0);
        smv.setDirector_list(tmp.getDirector_list());
        smv.setGenre_name(gg);
        smv.setGenre_id(0);
        smv.setGenre_list(tmp.getGenre_list());

        aa = "";
        dd = "";
        gg = "";
        cast = "";
        c_name = "";

        nId = tId;
        title = tmp.getTitle();
        rate = tmp.getRate();
        running_time = tmp.getRunning_time();
        open_date = tmp.getOpen_date();
        grade = tmp.getGrade();
        synopsis = tmp.getSynopsis();
        poster = tmp.getPoster();

        showMovieVo.add(j, smv);
        j++;
      }
    }

    String[] genre = gg.split(", ");
    Arrays.sort(genre);
    String wo = "";
    gg = "";
    for (String gGg : genre) {
      if (!(gGg.equals(wo))) {
        wo = gGg;
        gg += wo + ", ";
      }
    }

    ShowMovieVo smv = new ShowMovieVo();
    smv.setId(nId);
    smv.setTitle(title);
    smv.setRate(rate);
    smv.setRunning_time(running_time);
    smv.setOpen_date(open_date);
    smv.setGrade(grade);
    smv.setSynopsis(synopsis);
    smv.setPoster(poster);

    smv.setActor_list(tmp.getActor_list());
    smv.setActor_id(0);
    smv.setActor_name(aa);
    smv.setCast(cast);
    smv.setC_name(c_name);
    smv.setDirector_name(dd);
    smv.setDirector_id(0);
    smv.setDirector_list(tmp.getDirector_list());
    smv.setGenre_name(gg);
    smv.setGenre_id(0);
    smv.setGenre_list(tmp.getGenre_list());
    showMovieVo.add(j, smv);

    return showMovieVo;
  }

  @Override
  public List<ActorVo> getActors() {
    return boardDao.getActors();
  }

  @Override
  public List<DirectorVo> getDirectors() {
    return boardDao.getDirectors();
  }

  @Override
  public ShowMovieVo getMovie(Integer id) {
    ShowMovieVo smv = new ShowMovieVo();
    List<ShowMovieVo> SMV = boardDao.getMovie(id);
    ShowMovieVo tmp = SMV.get(0);
    Integer tId = 0;
    Integer nId = tmp.getId();
    String title = tmp.getTitle();
    String rate = tmp.getRate();
    Integer running_time = tmp.getRunning_time();
    String open_date = tmp.getOpen_date();
    String grade = tmp.getGrade();
    String synopsis = tmp.getSynopsis();
    String poster = tmp.getPoster();

    String aa = "", aaa = "";
    String dd = "", ddd = "";
    String gg = "", ggg = "";
    String cast = "", c_name = "";

    for (int i = 0; i < SMV.size(); i++) {
      tmp = SMV.get(i);
      tId = tmp.getId();
      if (tId == nId) {
        if (!(aaa.equals(tmp.getActor_name()))) {
          aa = aa + tmp.getActor_name() + ", ";
          aaa = tmp.getActor_name();

          cast = cast + tmp.getCast() + ", ";
          c_name = c_name + tmp.getC_name() + ", ";
        }
        if (!(ddd.equals(tmp.getDirector_name()))) {
          dd = dd + tmp.getDirector_name() + ", ";
          ddd = tmp.getDirector_name();
        }
        if (!(ggg.equals(tmp.getGenre_name()))) {
          gg = gg + tmp.getGenre_name() + ", ";
          ggg = tmp.getGenre_name();
        }
      }
      if (tId == nId) {
        String[] genre = gg.split(", ");
        Arrays.sort(genre);
        String wo = "";
        gg = "";
        for (String gGg : genre) {
          if (!(gGg.equals(wo))) {
            wo = gGg;
            gg += wo + ", ";
          }
        }

        smv.setId(nId);
        smv.setTitle(title);
        smv.setRate(rate);
        smv.setRunning_time(running_time);
        smv.setOpen_date(open_date);
        smv.setGrade(grade);
        smv.setSynopsis(synopsis);
        smv.setPoster(poster);

        smv.setActor_list(tmp.getActor_list());
        smv.setActor_id(0);
        smv.setActor_name(aa);
        smv.setCast(cast);
        smv.setC_name(c_name);
        smv.setDirector_name(dd);
        smv.setDirector_id(0);
        smv.setDirector_list(tmp.getDirector_list());
        smv.setGenre_name(gg);
        smv.setGenre_id(0);
        smv.setGenre_list(tmp.getGenre_list());
      }
    }
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
