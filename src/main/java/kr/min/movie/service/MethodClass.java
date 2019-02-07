package kr.min.movie.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.ShowMovieVo;

public class MethodClass {

  public ShowMovieVo setMovie(List<ShowMovieVo> SMV) {
    System.out.println("setMovie method call");
    ShowMovieVo vo = new ShowMovieVo();
    /*List<ShowMovieVo> SMV = boardDao.getMovie(id);*/
    System.out.println("I got the one movie info : " + SMV);
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
      System.out.println("I gonna do for 문 : " + i + "/" + SMV.size());
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

        vo.setId(nId);
        vo.setTitle(title);
        vo.setRate(rate);
        vo.setRunning_time(running_time);
        vo.setOpen_date(open_date);
        vo.setGrade(grade);
        vo.setSynopsis(synopsis);
        vo.setPoster(poster);

        vo.setActor_list(tmp.getActor_list());
        vo.setActor_id(0);
        vo.setActor_name(aa);
        vo.setCast(cast);
        vo.setC_name(c_name);
        vo.setDirector_name(dd);
        vo.setDirector_id(0);
        vo.setDirector_list(tmp.getDirector_list());
        vo.setGenre_name(gg);
        vo.setGenre_id(0);
        vo.setGenre_list(tmp.getGenre_list());
      }
    }
    System.out.println("setMovie method done");
    return vo;
  }
  
  public PageMaker adPageMaker(Criteria cri, int displayPageNum, int totalCount) {
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCriteria(cri);
    pageMaker.setDisplayPageNum(displayPageNum);
    pageMaker.setTotalCount(totalCount);
    return pageMaker;
  }
  
  public MoviePageMaker moviePageMaker(MovieCriteria cri, int displayPageNum, int totalCount) {
    MoviePageMaker pageMaker = new MoviePageMaker();
    pageMaker.setCriteria(cri);
    pageMaker.setDisplayPageNum(displayPageNum);
    pageMaker.setTotalCount(totalCount);
    System.out.println("pageMaker Service : " + pageMaker);
    return pageMaker;
  }
  
  
  
  
  /*Admin*/


  public boolean equalActorListVo(ActorListVo vo1, ActorListVo vo2) {
    if (vo1.getActor_id() != vo2.getActor_id())
      return false;
    if (!vo1.getC_name().equals(vo2.getC_name()))
      return false;
    if (!vo1.getCast().equals(vo2.getCast()))
      return false;
    return true;
  }

  public boolean equalActorListVoByActorId(ActorListVo vo1, ActorListVo vo2) {
    if (vo1.getActor_id() != vo2.getActor_id())
      return false;
    return true;
  }

  public boolean isNull(ActorListVo vo1) {
    if (vo1.getActor_id() != null)
      return false;
    if (vo1.getC_name() != null)
      return false;
    if (vo1.getCast() != null)
      return false;
    return true;
  }

  public List<ActorListVo> getModifyActorListVo(List<ActorListVo> oriList, List<ActorListVo> newList) {
    List<ActorListVo> list = new ArrayList<ActorListVo>();

    for (ActorListVo oritmp : oriList) {
      for (ActorListVo newtmp : newList) {
        if (!(equalActorListVo(oritmp, newtmp)) && equalActorListVoByActorId(oritmp, newtmp)) {
          list.add(newtmp);
        }
      }
    }
    return list;
  }

  public List<ActorListVo> getDeleteActorListVo(List<ActorListVo> oriList, List<ActorListVo> newList) {
    List<ActorListVo> list = new ArrayList<ActorListVo>();

    for (ActorListVo oritmp : oriList) {
      int cnt = 0;
      for (ActorListVo newtmp : newList) {
        if (equalActorListVo(oritmp, newtmp)) {
          break;
        }
        cnt++;
      }
      if (cnt == newList.size()) {
        list.add(oritmp);
      }
    }
    return list;
  }

  public boolean isInclude(List<ActorListVo> list, ActorListVo vo) {
    for(ActorListVo tmp:list) {
      if(equalActorListVo(tmp, vo))
        return true;
    }
    return false;
  }

  public boolean isNull(List<ActorListVo> list, ActorListVo vo) {
    for(ActorListVo tmp:list) {
      if(equalActorListVo(tmp, vo))
        return true;
    }
    return false;
  }


  public boolean equalDirectorListVo(DirectorListVo vo1, DirectorListVo vo2) {
    if (vo1.getDirector_id() != vo2.getDirector_id())
      return false;
    return true;
  }

  public boolean equalDirectorListVoByDirectorId(DirectorListVo vo1, DirectorListVo vo2) {
    if (vo1.getDirector_id() != vo2.getDirector_id())
      return false;
    return true;
  }

  public boolean isNull(DirectorListVo vo1) {
    if (vo1.getDirector_id() != null)
      return false;
    return true;
  }

  public List<DirectorListVo> getDeleteDirectorListVo(List<DirectorListVo> oriList, List<DirectorListVo> newList) {
    List<DirectorListVo> list = new ArrayList<DirectorListVo>();

    for (DirectorListVo oritmp : oriList) {
      int cnt = 0;
      for (DirectorListVo newtmp : newList) {
        if (equalDirectorListVo(oritmp, newtmp)) {
          break;
        }
        cnt++;
      }
      if (cnt == newList.size()) {
        list.add(oritmp);
      }
    }
    return list;
  }

  public boolean isInclude(List<DirectorListVo> list, DirectorListVo vo) {
    for(DirectorListVo tmp:list) {
      if(equalDirectorListVo(tmp, vo))
        return true;
    }
    return false;
  }

  public boolean isNull(List<DirectorListVo> list, DirectorListVo vo) {
    for(DirectorListVo tmp:list) {
      if(equalDirectorListVo(tmp, vo))
        return true;
    }
    return false;
  }

}