package kr.min.movie.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.AdminDao;
import kr.min.movie.vo.ActorVo;
import kr.min.movie.vo.DirectorMovieVo;
import kr.min.movie.vo.DirectorVo;
import kr.min.movie.vo.GenreVo;
import kr.min.movie.vo.MovieVo;

@Service
public class AdminServiceImp implements AdminService {

	@Autowired
	AdminDao adminDao;
	

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
  public List<DirectorVo> getDirector1() {
    
    /*List<DirectorVo> DV = new List<>;
    for(int i=0; i<DV.size(); i++){
      
    }*/
    return adminDao.getDirector1();
  }

  @Override
  /*public List<DirectorMovieVo> getDirector(String name) {*/
  public List<DirectorMovieVo> getDirector() {

    DirectorMovieVo directorMovieVo = new DirectorMovieVo();
    
    List<DirectorMovieVo> DMV = new ArrayList<DirectorMovieVo>();
    
    Integer director_id = 0;
    String director_name = "";
    Integer m_director_list_id = 0;
    Integer director_list = 0;
    Integer id = 0;
    String title = "";

    
    
/*    DMV = adminDao.getDirector(name);*/
    adminDao.getDirector();
    System.out.println(DMV);
    
    for(int i=0; i<DMV.size(); i++){
       DMV = adminDao.getDirectorList(director_id);
       System.out.println(director_id);
     }
    for(int i=0; i<DMV.size(); i++){
      DMV = adminDao.getDirectorOneMovie(director_list);
      System.out.println(director_list);
    }
    
    System.out.print(director_id + " ");
    System.out.print(director_name + " ");
    System.out.print(director_list + " ");
    System.out.print(director_list + " ");
    System.out.print(id + " ");
    System.out.println(title);
    System.out.println("1--------------------------------");
    System.out.println(DMV + " : "+ DMV.size());
    
    for (int i = 0; i < DMV.size(); i++) { 
      /*DirectorMovieVo in2 = new DirectorMovieVo();*/
      
      String str2 = String.valueOf(i);
      directorMovieVo.setDirector_id(director_id);
      directorMovieVo.setDirector_name(director_name);
      directorMovieVo.setDirector_list(director_list);
      directorMovieVo.setM_director_list_id(m_director_list_id);
      directorMovieVo.setId(id);
      directorMovieVo.setTitle(title);
      
      System.out.println(i+":"+id);
      
      DMV.add(directorMovieVo);
      
      System.out.println(DMV + " : "+ DMV.size());
    }
    
    System.out.println("DMV.size() : "+ DMV.size());

    for(int i = 0 ; i < DMV.size() ; i++) {
      director_id = DMV.get(i).getDirector_id();
      director_name = DMV.get(i).getDirector_name();
      m_director_list_id = DMV.get(i).getM_director_list_id();
      director_list = DMV.get(i).getDirector_list();
      id = DMV.get(i).getId();
      title = DMV.get(i).getTitle();
      
      System.out.print(director_id + " ");
      System.out.print(director_name + " ");
      System.out.print(director_list + " ");
      System.out.print(m_director_list_id + " ");
      System.out.print(id + " ");
      System.out.println(title);
      System.out.println(i+"--------------------------------");
      
      if(m_director_list_id == null)
        m_director_list_id = 0;
        /*directorMovieVo.setM_director_list_id(0);*/
      if(director_list == null)
        directorMovieVo.setDirector_list(0);
      /*if(id == null)
        directorMovieVo.setId(0);*/
      if(title == null)
        directorMovieVo.setTitle("");
      
      
      System.out.print(director_id + " ");
      System.out.print(director_name + " ");
      System.out.print(director_list + " ");
      System.out.print(m_director_list_id + " ");
      System.out.print(id + " ");
      System.out.println(title);
      System.out.println("3--------------------------------");
    }
    
    return DMV;
  }


}
