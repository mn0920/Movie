package kr.min.movie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.AdminDao;
import kr.min.movie.vo.ActorListVo;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.AllActorListVo;
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
  public List<AllActorListVo> getOriActorList(Integer actor_list) {
    return adminDao.getShowOriActorList(actor_list);
  }

  @Override
  public void modifyActorList(List<ActorListVo> actorListsVo) {
    List<ActorListVo> newList = actorListsVo;
    Integer actor_list = actorListsVo.get(0).getActor_list();
    List<ActorListVo> oriList = adminDao.getOriActorList(actor_list);
    
    List<ActorListVo> modiList = getModifyActorListVo(oriList, newList);
    for(ActorListVo changeC : modiList)
      adminDao.modifyActorCList(changeC);
  }

  @Override
  public void delActorList(List<ActorListVo> actorListsVo) {
    List<ActorListVo> newList = actorListsVo;
    Integer actor_list = actorListsVo.get(0).getActor_list();
    List<ActorListVo> oriList = adminDao.getOriActorList(actor_list);
    
    List<ActorListVo> delList = getDeleteActorListVo(oriList, newList);
    System.out.println("delList : " + delList);
  }

  public boolean equalActorListVo(ActorListVo vo1, ActorListVo vo2) {
    if(vo1.getActor_id() != vo2.getActor_id())
      return false;
    if(!vo1.getC_name().equals(vo2.getC_name()))
      return false;
    if(!vo1.getCast().equals(vo2.getCast()))
      return false;
    return true;
  }

  public boolean equalActorListVoByActorId(ActorListVo vo1, ActorListVo vo2) {
    if(vo1.getActor_id() != vo2.getActor_id())
      return false;
    return true;
  }
  
  public List<ActorListVo> getModifyActorListVo(List<ActorListVo> oriList, List<ActorListVo> newList){
    List<ActorListVo> list = new ArrayList<ActorListVo>();
    
    for(ActorListVo oritmp : oriList) {
      for(ActorListVo newtmp : newList) {
        if(!(equalActorListVo(oritmp, newtmp)) && equalActorListVoByActorId(oritmp, newtmp)) {
          list.add(newtmp);
        }
      }
    }
    return list;
  }
  
  public List<ActorListVo> getDeleteActorListVo(List<ActorListVo> oriList, List<ActorListVo> newList){
    List<ActorListVo> list = new ArrayList<ActorListVo>();
    
    for(ActorListVo oritmp : oriList) {
      int cnt = 0;
      for(ActorListVo newtmp : newList) {
        if(equalActorListVo(oritmp, newtmp)) {
          break;
        }
        cnt++;
      }
      if(cnt == newList.size()) {
        list.add(oritmp);
      }
    }
    return list;
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