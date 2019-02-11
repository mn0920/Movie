package kr.min.movie.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

public class ShowMovieVo {
/*extends MovieVo*/
  private Integer id;
  private String title;
  private String rate;
  private Integer running_time;
  private Date open_date;
  private String grade;
  private String synopsis;
  private String poster;

  private Integer actor_id;
  private Integer actor_list;
  private String actor_name;
  private String cast;
  private String c_name;

  private Integer director_id;
  private String director_name;
  private Integer director_list;

  private String genre_name;
  private Integer genre_list;
  private Integer genre_id;

  /*private Integer like;*/

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getRate() {
    return rate;
  }

  public void setRate(String rate) {
    this.rate = rate;
  }

  public Integer getRunning_time() {
    return running_time;
  }

  public void setRunning_time(Integer running_time) {
    this.running_time = running_time;
  }
  
  public String getOpen_date() { 
    SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
    java.util.Date utilDate = new java.util.Date(open_date.getTime());
    
    return format.format(utilDate);
  }
  
  public void setOpen_date(String open_date) {
    SimpleDateFormat beforeFormat = new SimpleDateFormat("yyyyMMdd");
    SimpleDateFormat afterFormat = new SimpleDateFormat("yyyy-MM-dd");
    java.util.Date tempDate = null;
    try {
        tempDate = beforeFormat.parse(open_date);
    } catch (ParseException e) {
        e.printStackTrace();
    }
    String transDate = afterFormat.format(tempDate);
    Date d = Date.valueOf(transDate);
    this.open_date = d;
  }

  public String getGrade() {
    return grade;
  }

  public void setGrade(String grade) {
    this.grade = grade;
  }

  public String getSynopsis() {
    return synopsis;
  }

  public void setSynopsis(String synopsis) {
    this.synopsis = synopsis;
  }

  public String getPoster() {
    return poster;
  }

  public void setPoster(String poster) {
    this.poster = poster;
  }

  public Integer getActor_id() {
    return actor_id;
  }

  public void setActor_id(Integer actor_id) {
    this.actor_id = actor_id;
  }

  public Integer getActor_list() {
    return actor_list;
  }

  public void setActor_list(Integer actor_list) {
    this.actor_list = actor_list;
  }

  public String getActor_name() {
    return actor_name;
  }

  public void setActor_name(String actor_name) {
    this.actor_name = actor_name;
  }

  public String getCast() {
    return cast;
  }

  public void setCast(String cast) {
    this.cast = cast;
  }

  public String getC_name() {
    return c_name;
  }

  public void setC_name(String c_name) {
    this.c_name = c_name;
  }

  public Integer getDirector_id() {
    return director_id;
  }

  public void setDirector_id(Integer director_id) {
    this.director_id = director_id;
  }

  public String getDirector_name() {
    return director_name;
  }

  public void setDirector_name(String director_name) {
    this.director_name = director_name;
  }

  public Integer getDirector_list() {
    return director_list;
  }

  public void setDirector_list(Integer director_list) {
    this.director_list = director_list;
  }

  public String getGenre_name() {
    return genre_name;
  }

  public void setGenre_name(String genre_name) {
    this.genre_name = genre_name;
  }

  public Integer getGenre_list() {
    return genre_list;
  }

  public void setGenre_list(Integer genre_list) {
    this.genre_list = genre_list;
  }

  public Integer getGenre_id() {
    return genre_id;
  }

  public void setGenre_id(Integer genre_id) {
    this.genre_id = genre_id;
  }/*

  public Integer getLike() {
    if(like == null) {
      like = 0;
    }
    return like;
  }

  public void setLike(Integer like) {
    this.like = like;
  }*/


  @Override
  public String toString() {
    return "ShowMovieVo [id=" + id + ", title=" + title + ", rate=" + rate + ", running_time=" + running_time + ", open_date=" + open_date + ", grade=" + grade + ", synopsis=" + synopsis + ", poster="
        + poster + ", actor_id=" + actor_id + ", actor_list=" + actor_list + ", actor_name=" + actor_name + ", cast=" + cast + ", c_name=" + c_name + ", director_id="
        + director_id + ", director_name=" + director_name + ", director_list=" + director_list + ", genre_name=" + genre_name + ", genre_list=" + genre_list + "genre_id" + genre_id /*+ "like" + like*/ + "]";
  }

}
