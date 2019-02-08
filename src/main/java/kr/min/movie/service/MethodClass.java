package kr.min.movie.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.MovieCriteria;
import kr.min.movie.pagenation.MoviePageMaker;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.ShowMovieVo;

public class MethodClass {

  public ShowMovieVo setMovie(List<ShowMovieVo> SMV) {
    /*System.out.println("setMovie method call");*/
    ShowMovieVo vo = new ShowMovieVo();
    /*List<ShowMovieVo> SMV = boardDao.getMovie(id);*/
    /*System.out.println("I got the one movie info : " + SMV);*/
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
      /*System.out.println("I gonna do for 문 : " + i + "/" + SMV.size());*/
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
    /*System.out.println("setMovie method done");*/
    return vo;
  }

  public List<ShowMovieVo> setMovieList(List<ShowMovieVo> SMV) {
    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();

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
        if (tmp.getActor_name() == null) {
          aa = "아직 배우가 입력되지 않았습니다.";
          cast = "";
          c_name = "";
        } else if (!(aaa.equals(tmp.getActor_name()))) {
          aa = aa + tmp.getActor_name() + ", ";
          aaa = tmp.getActor_name();

          cast = cast + tmp.getCast() + ", ";
          c_name = c_name + tmp.getC_name() + ", ";
        }
        if (tmp.getDirector_name() == null) {
          dd = "아직 감독이 입력되지 않았습니다.";
        } else if (!(ddd.equals(tmp.getDirector_name()))) {
          dd = dd + tmp.getDirector_name() + ", ";
          ddd = tmp.getDirector_name();
        }
        if (tmp.getGenre_name() == null) {
          gg = "아직 장르가 입력되지 않았습니다.";
        } else if (!(ggg.equals(tmp.getGenre_name()))) {
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
        // 저기 위를 통해서 아까 데이터에 다 나누어져있던 자료들을 하나의 영화 id를 기준으로
        // 배우의 정보, 장르, 감독, 주/조연, 캐릭터이름을 배열에서 하나씩 꺼내 저장해줍니다.
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
        // 여기서 그 영화 정보를 set합니다.


        aa = "";
        dd = "";
        gg = "";
        cast = "";
        c_name = "";
        // 초기화
        nId = tId;
        title = tmp.getTitle();
        rate = tmp.getRate();
        running_time = tmp.getRunning_time();
        open_date = tmp.getOpen_date();
        grade = tmp.getGrade();
        synopsis = tmp.getSynopsis();
        poster = tmp.getPoster();

        showMovieVo.add(j, smv);
        // list<vo> 등록
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
  
/*
  업데이트를 하면 차후 사용하는 것으로
  public void result(AccountVo user) {
    Integer aId = user.getU_favorite_actor_id();
    Integer dId = user.getU_favorite_director_id();
    Integer geId = user.getU_favorite_genre_id();
    String u_preference = user.getU_preference();
    String[] array = u_preference.split(",");
    for (String up : array) {
      if (up == "D")
        resultDirector(dId);
      if (up == "A")
        resultActor(aId);
      if (up == "G")
        resultGenre(geId);
      if (up == "C")
        ;
    }
    for (int i = 0; i < array.length; i++) {
      System.out.println(array[i]);
    }
    System.out.println("actor : " + aId + ", " + "director : " + dId + ", " + "genre : " + geId);
  }

  public void resultActor(int aId) {

  }

  public void resultDirector(int aId) {

  }

  public void resultGenre(int aId) {

  }*/

}
