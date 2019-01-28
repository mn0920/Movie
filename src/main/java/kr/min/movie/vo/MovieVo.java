package kr.min.movie.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;

public class MovieVo {
  private Integer id;
	private String title;
	private String rate;
  private Integer running_time;
  private Date open_date;
  private String grade;
	private String synopsis;
	private String poster;
  private Integer status;
 
  
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
  
  public String getOpen_date() { //월 : 대문자 MM , 시간-분 : 소문자 mm
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
  
  public Integer getStatus() {
    return status;
  }
  public void setStatus(Integer status) {
    this.status = status;
  }

  @Override
  public String toString() {
    return "BoardVo [id" + id +", title=" + title + ", rate=" + rate + ", running_time=" + running_time
        + ", open_date=" + open_date + ", grade=" + grade + ", synopsis=" + synopsis + ", poster=" + poster
        + ", status=" + status + "]";
  }

}
