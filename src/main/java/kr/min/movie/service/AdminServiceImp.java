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
  public void modifyActorList(ActorListVo actorListVo) {
    if(actorListVo.getActor_id() != null)
      adminDao.modifyActorList(actorListVo);
  }

  @Override
  public void modifyDirectorList(DirectorListVo directorListVo) {
    if(directorListVo.getDirector_id() != null)
      adminDao.modifyDirectorList(directorListVo);
    
  }

  @Override
  public void modifyGenreList(GenreListVo genreListVo) {
    if(genreListVo.getGenre_id() != null)
      adminDao.modifyGenreList(genreListVo);
  }


}