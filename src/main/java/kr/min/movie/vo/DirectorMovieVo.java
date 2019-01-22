package kr.min.movie.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DirectorMovieVo {

  /* director */
  private String director_name;
  /* director_list */
  private Integer director_id;
  /* movie */
  private String title;
  private int id;
  private Date open_date;
  
  
  public String getDirector_name() {
    return director_name;
  }
  public void setDirector_name(String director_name) {
    this.director_name = director_name;
  }
  
  public Integer getDirector_id() {
    return director_id;
  }
  public void setDirector_id(Integer director_id) {
    this.director_id = director_id;
  }
  
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  
  public String getOpen_date() { //월 : 대문자 MM , 시간-분 : 소문자 mm
    SimpleDateFormat format = new SimpleDateFormat("yyyy년MM월dd일");
    return format.format(open_date);
  }
  public void setOpen_date(Date open_date) {
    this.open_date = open_date;
  }


  @Override
  public String toString() {
    return "DirectorMovieVo [director_name=" + director_name + ", director_id=" + director_id
              + ", title=" + title + ", id=" + id + ", open_date=" + open_date + "]";
  }

}
