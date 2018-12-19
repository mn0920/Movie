package kr.min.movie.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVo {
	private String title;
	private String rate;
  private int running_time;
  private Date open_date;
  private String grade;
  private int m_genre_list;
  private int m_director_list;
  private int m_actor_list;
  private String genre_list;
  private String director_list;
  private String actor_list;
	private String synopsis;
	private String poster;
  private int like;
  
  
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
  
  public int getM_genre_list() {
    return m_genre_list;
  }
  public void setM_genre_list(int m_genre_list) {
    this.m_genre_list = m_genre_list;
  }
  
  public int getM_director_list() {
    return m_director_list;
  }
  public void setM_director_list(int m_director_list) {
    this.m_director_list = m_director_list;
  }
  
  public int getM_actor_list() {
    return m_actor_list;
  }
  public void setM_actor_list(int m_actor_list) {
    this.m_actor_list = m_actor_list;
  }
  
  public String getGenre_list() {
    return genre_list;
  }
  public void setGenre_list(String genre_list) {
    this.genre_list = genre_list;
  }
  
  public String getDirector_list() {
    return director_list;
  }
  public void setDirector_list(String director_list) {
    this.director_list = director_list;
  }
  
  public String getActor_list() {
    return actor_list;
  }
  public void setActor_list(String actor_list) {
    this.actor_list = actor_list;
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

  @Override
  public String toString() {
    return "BoardVo [title=" + title + ", rate=" + rate + ", running_time=" + running_time + ", open_date=" + open_date + ", grade=" + grade + ", m_genre_list=" + m_genre_list + ", m_director_list="
        + m_director_list + ", m_actor_list=" + m_actor_list + ", genre_list=" + genre_list + ", director_list=" + director_list + ", actor_list=" + actor_list + ", synopsis=" + synopsis + ", poster="
        + poster + ", like=" + like + "]";
  }

}
