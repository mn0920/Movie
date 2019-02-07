/*import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import kr.min.movie.vo.ShowMovieVo;

package kr.min.movie.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.BoardDao;
import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.ShowMovieVo;

@Service
public class BoardServiceImp2 {

  @Autowired
  BoardDao boardDao;



  public List<ShowMovieVo> getShowMovie1(Criteria cri) {
    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();
  //얘는 뭐예요??
  //음 즈 마지막에 vo에 담긴 애들을 담을  list입니다
  //무슨 의미인지 모르겠어요
  
  //getMovie
  List<ShowMovieVo> SMV = boardDao.getShowMovie(cri);
      
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
    boardDao.getMovie(tId);
    if (tId == nId) {
      if(tmp.getActor_name() == null) {
        aa = "아직 배우가 입력되지 않았습니다.";
        cast = "";
        c_name = "";
      } else if (!(aaa.equals(tmp.getActor_name()))) {
        aa = aa + tmp.getActor_name() + ", ";
        aaa = tmp.getActor_name();

        cast = cast + tmp.getCast() + ", ";
        c_name = c_name + tmp.getC_name() + ", ";
      }
      if(tmp.getDirector_name() == null) {
        dd = "아직 감독이 입력되지 않았습니다.";
      } else if (!(ddd.equals(tmp.getDirector_name()))) {
        dd = dd + tmp.getDirector_name() + ", ";
        ddd = tmp.getDirector_name();
      }
      if(tmp.getGenre_name() == null) {
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
      //저기 위를 통해서 아까 데이터에 다 나누어져있던 자료들을 하나의 영화 id를 기준으로
      //배우의 정보, 장르, 감독, 주/조연, 캐릭터이름을 배열에서 하나씩 꺼내 저장해줍니다.
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
      //여기서 그 영화 정보를 set합니다.

      System.out.println("SMV : " + SMV);

      aa = "";
      dd = "";
      gg = "";
      cast = "";
      c_name = "";
      //초기화
      nId = tId;
      title = tmp.getTitle();
      rate = tmp.getRate();
      running_time = tmp.getRunning_time();
      open_date = tmp.getOpen_date();
      grade = tmp.getGrade();
      synopsis = tmp.getSynopsis();
      poster = tmp.getPoster();

      showMovieVo.add(j, smv);
      //list<vo> 등록
      System.out.println("showMovieVo : " + showMovieVo);
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

public List<ShowMovieVo> getShowMovie(Criteria cri) {

    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();

    List<ShowMovieVo> SMV = boardDao.getShowMovie(cri);
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
    
    return showMovieVo;
  }


public ShowMovieVo setVo(ShowMovieVo vo) {

    
  return vo;
} 
    


public List<ShowMovieVo> isInfoNull(List<ShowMovieVo> vo) {
  List<ShowMovieVo> list = vo;
	
  for(ShowMovieVo tmp : list) {
	if (tmp.getActor_id() != null)
	    tmp.setActor_id(0);
	if (tmp.getActor_name().equals("") || tmp.getActor_name() == null)
	    tmp.setActor_name("아직 배우의 정보가 입력되지 않았습니다. 정보를 입력해주세요.");
	if (tmp.getC_name().equals("") || tmp.getC_name() != null)
	    tmp.setC_name("아직 배우의 정보가 입력되지 않았습니다. 정보를 입력해주세요.");
	if (tmp.getCast().equals("") || tmp.getCast() != null)
	    tmp.setCast("아직 배우의 정보가 입력되지 않았습니다. 정보를 입력해주세요.");
	if (tmp.getDirector_id() != null)
	    tmp.setDirector_id(0);
	if (tmp.getDirector_name().equals("") || tmp.getDirector_name() == null)
	    tmp.setDirector_name("아직 감독의 정보가 입력되지 않았습니다. 정보를 입력해주세요.");
	if (tmp.getGenre_id() != null)
	    tmp.setGenre_id(0);
	if (tmp.getGenre_name().equals("") || tmp.getGenre_name() != null)
	    tmp.setGenre_name("아직 영화 장르가 입력되지 않았습니다. 정보를 입력해주세요.");
	list.add(tmp);
  }
  return list;
}


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

@Service
public class BoardServiceImp implements BoardService {

  @Autowired
  BoardDao boardDao;

  @Override
  public List<ShowMovieVo> getShowMovie(MovieCriteria cri) {

    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();
    //얘는 뭐예요??
    //음 즈 마지막에 vo에 담긴 애들을 담을  list입니다
    //무슨 의미인지 모르겠어요
    
    //getMovie
    List<ShowMovieVo> SMV = boardDao.getShowMovie(cri);
        
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
      /*boardDao.getMovie(tId);
      if (tId == nId) {
         if (!(aaa.equals(tmp.getActor_name()))) {
          System.out.println("4 : " + tmp.getActor_name());
          aa = aa + tmp.getActor_name() + ", ";
          aaa = tmp.getActor_name();
  
          cast = cast + tmp.getCast() + ", ";
          c_name = c_name + tmp.getC_name() + ", ";
        }
        if(tmp.getDirector_name() == null) {
          dd = "아직 감독이 입력되지 않았습니다.";
        } else if (!(ddd.equals(tmp.getDirector_name()))) {
          dd = dd + tmp.getDirector_name() + ", ";
          ddd = tmp.getDirector_name();
        }
        if(tmp.getGenre_name() == null) {
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
        
        //저기 위를 통해서 아까 데이터에 다 나누어져있던 자료들을 하나의 영화 id를 기준으로
        //배우의 정보, 장르, 감독, 주/조연, 캐릭터이름을 배열에서 하나씩 꺼내 저장해줍니다.
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
        System.out.println("5 smv : " + smv.getActor_name());
        System.out.println("5 aa : " + aa);
        smv.setCast(cast);
        smv.setC_name(c_name);
        smv.setDirector_name(dd);
        smv.setDirector_id(0);
        smv.setDirector_list(tmp.getDirector_list());
        smv.setGenre_name(gg);
        smv.setGenre_id(0);
        smv.setGenre_list(tmp.getGenre_list());
        //여기서 그 영화 정보를 set합니다.

        System.out.println("SMV : " + SMV);

        aa = "";
        dd = "";
        gg = "";
        cast = "";
        c_name = "";
        //초기화
        nId = tId;
        title = tmp.getTitle();
        rate = tmp.getRate();
        running_time = tmp.getRunning_time();
        open_date = tmp.getOpen_date();
        grade = tmp.getGrade();
        synopsis = tmp.getSynopsis();
        poster = tmp.getPoster();

        showMovieVo.add(j, smv);
        //list<vo> 등록
        j++;
      }
      System.out.println("showMovieVo : " + showMovieVo);
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
  public MoviePageMaker getPageMaker(MovieCriteria cri, int displayPageNum) {
    int totalCount = boardDao.getCountBoardLists(cri); // 검색된 컨텐츠의 갯수를 갖고온다
    cri = new Criteria();
    int perPageNum = 8;
    cri.setPerPageNum(perPageNum); // 한 페이지당 보여줄 게시판의 수 - 없으면 10개씩 보여준다.
    // 위에 것들이 있어야 계산을 할 수 있다.
    MoviePageMaker pageMaker = new MoviePageMaker();
    pageMaker.setCriteria(cri);
    pageMaker.setDisplayPageNum(displayPageNum);
    pageMaker.setTotalCount(totalCount);// 제대로 됬는지 다 보기위해서 확인하기 위한 것이기때문에 주석처리 가능함.
    System.out.println("pageMaker Service : " + pageMaker);
    return pageMaker;
}

  @Override
  public PageMaker getActorPageMaker(Criteria cri, int displayPageNum) {
    int totalCount = boardDao.getActorCountBoardLists(cri); // 검색된 컨텐츠의 갯수를 갖고온다
    System.out.println("totalCount : " + totalCount + " / 수 : " + cri);
    // 이곳은 ServiceImp이기 때문에 boardService. 이걸 생략
    // cri가 들어오기때문에 필요가 음슴
    cri = new Criteria();
    int perPageNum = 24;
    cri.setPerPageNum(perPageNum);// 한 페이지당 보여줄 게시판의 수 - 없으면 10개씩 보여준다.
    cri.setPage(page);
    // 위에 것들이 있어야 계산을 할 수 있다.
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCriteria(cri);
    pageMaker.setDisplayPageNum(displayPageNum);
    pageMaker.setTotalCount(totalCount);// 제대로 됬는지 다 보기위해서 확인하기 위한 것이기때문에 주석처리 가능함.
    System.out.println("pageMaker Service : " + pageMaker);
    return pageMaker;
}

  @Override
  public PageMaker getDirectorPageMaker(Criteria cri, int displayPageNum) {
    int totalCount = boardDao.getDirectorCountBoardLists(cri); // 검색된 컨텐츠의 갯수를 갖고온다
    System.out.println("totalCount : " + totalCount + " / 수 : " + cri);
    // 이곳은 ServiceImp이기 때문에 boardService. 이걸 생략
     cri가 들어오기때문에 필요가 음슴
    Criteria cri = new Criteria();
    cri.setPerPageNum(perPageNum);// 한 페이지당 보여줄 게시판의 수 - 없으면 10개씩 보여준다.
    cri.setPage(page);
    // 위에 것들이 있어야 계산을 할 수 있다.
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCriteria(cri);
    pageMaker.setDisplayPageNum(displayPageNum);
    pageMaker.setTotalCount(totalCount);// 제대로 됬는지 다 보기위해서 확인하기 위한 것이기때문에 주석처리 가능함.
    System.out.println("pageMaker Service : " + pageMaker);
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






    List<ShowMovieVo> showMovieVo = new ArrayList<ShowMovieVo>();
    // 얘는 뭐예요??
    // 음 즈 마지막에 vo에 담긴 애들을 담을 list입니다
    // 무슨 의미인지 모르겠어요

    // getMovie
    List<ShowMovieVo> SMV = boardDao.getShowMovie(cri);

    /*ShowMovieVo tmp = SMV.get(0);
    Integer j = 0;

    for (int i = 0; i < SMV.size(); i++) {
      ShowMovieVo tmp = SMV.get(i);
      Integer id = SMV.get(i).getId();
      ShowMovieVo smv = new ShowMovieVo();
      List<ShowMovieVo> vo = boardDao.getMovie(id);
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


      System.out.println("작은 for문 시작");
      for (int k = 0; k < vo.size(); k++) {
        Integer tId = vo.get(k).getId();
        System.out.println("vo.size() : " + vo.size());
        ShowMovieVo voTmp = vo.get(k);
        System.out.println(k+ "voTmp : " + voTmp);
        System.out.println(k+ "SMV.get(k); : " + vo.get(k));
        System.out.println("작은 for문 돈 숫자 : " + k);
          System.out.println("tId : " + tId + " || " + "nId : " + nId);
          if (!(aaa.equals(voTmp.getActor_name()))) {
            System.out.println("배우 정리 시작 에러아님");
            aa = aa + voTmp.getActor_name() + ", ";
            aaa = voTmp.getActor_name();

            cast = cast + voTmp.getCast() + ", ";
            c_name = c_name + voTmp.getC_name() + ", ";
          }
          System.out.println(k + "배우 정리 끝 에러아님");
          if (!(ddd.equals(voTmp.getDirector_name()))) {
            System.out.println("감독 정리 시작 에러아님");
            dd = dd + voTmp.getDirector_name() + ", ";
            ddd = voTmp.getDirector_name();
          }
          if (!(ggg.equals(voTmp.getGenre_name()))) {
            gg = gg + voTmp.getGenre_name() + ", ";
            ggg = voTmp.getGenre_name();
          }
          System.out.println(k + "감독 정리 끝 에러아님");
          if (tId == nId) {
            System.out.println("장르 정리 시작 에러아님");
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
          }
          System.out.println(k + "장르 정리 끝 에러아님");
         k++; 
      }
      System.out.println("셋팅 시작 에러아님");

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
      System.out.println("smv : " + smv.getActor_name());
      System.out.println("aa : " + aa);
      smv.setCast(cast);
      smv.setC_name(c_name);
      smv.setDirector_name(dd);
      smv.setDirector_id(0);
      smv.setDirector_list(tmp.getDirector_list());
      smv.setGenre_name(gg);
      smv.setGenre_id(0);
      smv.setGenre_list(tmp.getGenre_list());

      showMovieVo.add(j, smv);
      aa = "";
      dd = "";
      gg = "";
      cast = "";
      c_name = "";
      // 초기화

      title = tmp.getTitle();
      rate = tmp.getRate();
      running_time = tmp.getRunning_time();
      open_date = tmp.getOpen_date();
      grade = tmp.getGrade();
      synopsis = tmp.getSynopsis();
      poster = tmp.getPoster();
    }
    System.out.println("showMovieVo : " + showMovieVo);
    return showMovieVo;


}
*/