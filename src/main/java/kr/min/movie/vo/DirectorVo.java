package kr.min.movie.vo;

public class DirectorVo {

  private Integer director_id;
  private String director_name;
  
  
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
  
  
  @Override
  public String toString() {
    return "DirectorVo [director_id=" + director_id + ", director_name=" + director_name + "]";
  }

}
