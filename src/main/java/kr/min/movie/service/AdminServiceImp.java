package kr.min.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.AdminDao;
import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreListVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;
import kr.min.movie.vo.ShowMovieVo;

@Service
public class AdminServiceImp implements AdminService {

	@Autowired
	AdminDao adminDao;


 @Override
  public List<MovieVo> getMovie() {
    return adminDao.getMovie();
  }

 @Override
 public MovieVo getMovieId() {
   int movie_id = adminDao.getMovieId();
   movie_id += 1;
   MovieVo movieVo = new MovieVo();
   movieVo.setId(movie_id);
   return movieVo;
 }

  @Override
  public List<ShowMovieVo> getMovieForUser() {
    return adminDao.getShowMovie();
  }

  @Override
  public List<GenreVo> getGenre() {
    return adminDao.getGenre();
  }

  @Override
  public List<ActorVo> getActor() {
    return adminDao.getActor();
  }
  
  @Override
  public void addMovie(MovieVo movieVo) {
    adminDao.addMovie(movieVo);
  }

  @Override
  public void addMovie2(MovieVo movieVo) {
    adminDao.updateMovie(movieVo);
  }

  @Override
  public void addActor(ActorVo actorVo) {
    adminDao.addActor(actorVo);    
  }

  @Override
  public void addActorList(ActorListVo actorListVo) {
    if(actorListVo.getActor_id() != null)
      adminDao.addActorList(actorListVo);
  }

  @Override
  public void addDirector(DirectorVo directorVo) {
    adminDao.addDirector(directorVo);  
  }

  @Override
  public List<DirectorVo> getDirector() {
    return adminDao.getDirector();
  }

  @Override
  public List<DirectorMovieVo> getDirectorOneMovie() {
    return adminDao.getDirectorOneMovie();
  }

  @Override
  public void addDirectorList(DirectorListVo directorListVo) {
    if(directorListVo.getDirector_id() != null)
      adminDao.addDirectorList(directorListVo);
  }

  @Override
  public void addGenreList(GenreListVo genreListVo) {
    if(genreListVo.getGenre_id() != null)
      adminDao.addGenreList(genreListVo);
  }

  @Override
  public void modifyMovie(MovieVo movieVo) {
    adminDao.modifyMovie(movieVo);
  }

  @Override
  public void modifyActor(ActorVo actorVo) {
    adminDao.modifyActor(actorVo);
  }

  @Override
  public void modifyDirector(DirectorVo directorVo) {
    adminDao.modifyDirector(directorVo);
  }

  @Override
  public void modifyMovieTitle(String title, Integer id) {
    adminDao.modifyMovieTitle(title, id);
  }

  @Override
  public void modifyActorList(List<ActorListVo> actorListsVo) {
    List<ActorListVo> newList = actorListsVo;
    Integer actor_list = ((ActorListVo) actorListsVo).getActor_list();
    List<ActorListVo> oriList = adminDao.getOriActorList(actor_list);
    
    if(!(newList.equals(oriList))) {
      Integer tId = 0, nId = 0;
      String tCast = "", nCast = "";
      String tC_name = "", nC_name = "";
      for (int i = 0; i < oriList.size(); i++) {
        ActorListVo ori = oriList.get(i);
        tId = ori.getActor_id();
          for (int j = 0; j < newList.size(); j++) {
            ActorListVo newa = newList.get(j);
            nId = newa.getActor_id();
            if(nId != tId) { /* 기존의 정보가 없는건지, 있는건지 그것을 알아낼 방법을 모르겠다.*/
              adminDao.modifyActorList(newa);
            } else if(nId == tId) {
              tCast = ori.getCast();
              nCast = newa.getCast();
              if(tCast == nCast) {
                tC_name = ori.getC_name();
                nC_name = newa.getC_name();
                if(tC_name != nC_name){
                  adminDao.modifyActorList(newa);
                }
              } else if(tCast != nCast){
                adminDao.modifyActorList(newa);
              }
            } /* id가 같을 때 if문 끝 */
          } /* 안쪽 for문 끝 */
      } /* for문 끝 */
    }
  }

  @Override
  public void modifyDirectorList(DirectorListVo directorListVo) {
    Integer director_list = directorListVo.getDirector_list();
    List<DirectorListVo> ori = adminDao.getOriDirectorList(director_list);
    
      adminDao.modifyDirectorList(directorListVo);
  }

  @Override
  public void modifyGenreList(GenreListVo genreListVo) {
    Integer genre_list = genreListVo.getGenre_list();
    List<GenreListVo> ori = adminDao.getOriGenreList(genre_list);
    
      adminDao.modifyGenreList(genreListVo);
  }


}