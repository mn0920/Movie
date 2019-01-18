package kr.min.movie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.AdminDao;
import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorListVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
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
  public void addActor(ActorVo actorVo) {
    adminDao.addActor(actorVo);    
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


}/*

@Override
public void addActorList(List<ActorListVo> actorListVo) {
  System.out.println("1 : " + actorListVo);
  adminDao.addActorList(actorListVo);
  System.out.println("2 : " + actorListVo);
}*/

    /*ActorListVo actorListVoo = new ActorListVo();
    actorListVoo.setActor_list(((ActorListVo) actorListVo).getActor_list());
    actor_list = movie_id
    Integer actor_list = actorListVoo.getActor_list();
    actor_list 변수에, getActor_list이것을 담는다.
    getActor_list 설정값은 Integer
    setActor_list 설정값은  void
    Integer actor_id = actorListVoo.getActor_id();
    
    for(int i=0; i<=actorListVo.size(); i++) {
      actorListVo.set(1, actorListVoo.getActor_list());
      actorListVo.set(1, (ActorListVo)actorListVoo.setActor_list(actor_list));
      adminDao.addActorList(actorListVo);
    }*/
