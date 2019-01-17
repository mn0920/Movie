package kr.min.movie.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ShowMovieVo {

  private int id;
  private String title;
  private String rate;
  private int running_time;
  private Date open_date;
  private String grade;
  private String synopsis;
  private String poster;
  private int like;
  private Integer actor_id;
  private String actor_name;
  private Cast cast;
  private String c_name;
  private Integer director_id;
  private String director_name;
  private String genre_name;
  
  
  public int getId() {
    return id;
  }
  public void setId(int id) {
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
  
  public int getRunning_time() {
    return running_time;
  }
  public void setRunning_time(int running_time) {
    this.running_time = running_time;
  }
  
  public String getOpen_date() { //월 : 대문자 MM , 시간-분 : 소문자 mm
    SimpleDateFormat format = new SimpleDateFormat("yyyy년MM월dd일");
    return format.format(open_date);
  }
  public void setOpen_date(Date open_date) {
    this.open_date = open_date;
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
  
  public int getLike() {
    return like;
  }
  public void setLike(int like) {
    this.like = like;
  }
  
  public Integer getActor_id() {
    return actor_id;
  }
  public void setActor_id(Integer actor_id) {
    this.actor_id = actor_id;
  }
  
  public String getActor_name() {
    return actor_name;
  }
  public void setActor_name(String actor_name) {
    this.actor_name = actor_name;
  }
  
  public Cast getCast() {
    return cast;
  }
  public void setCast(Cast cast) {
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
  
  public String getGenre_name() {
    return genre_name;
  }
  public void setGenre_name(String genre_name) {
    this.genre_name = genre_name;
  }
  
  
  @Override
  public String toString() {
    return "ShowMovieVo [id=" + id + ", title=" + title + ", rate=" + rate + ", running_time=" + running_time + ", open_date=" + open_date + ", grade=" + grade + ", synopsis=" + synopsis + ", poster="
        + poster + ", like=" + like + ", actor_id=" + actor_id + ", actor_name=" + actor_name + ", cast=" + cast + ", c_name=" + c_name + ", director_id=" + director_id + ", director_name="
        + director_name + ", genre_name=" + genre_name + "]";
  }
  
}
