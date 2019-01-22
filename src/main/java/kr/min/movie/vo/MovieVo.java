package kr.min.movie.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MovieVo {
  private int id;
	private String title;
	private String rate;
  private int running_time;
  private Date open_date;
  private String grade;
	private String synopsis;
	private String poster;
  private int status;
 
  
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
  
  public int getStatus() {
    return status;
  }
  public void setStatus(int status) {
    this.status = status;
  }

  @Override
  public String toString() {
    return "BoardVo [id" + id +", title=" + title + ", rate=" + rate + ", running_time=" + running_time
        + ", open_date=" + open_date + ", grade=" + grade + ", synopsis=" + synopsis + ", poster=" + poster
        + ", status=" + status + "]";
  }

}
