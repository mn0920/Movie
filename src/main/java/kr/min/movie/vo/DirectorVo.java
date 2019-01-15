package kr.min.movie.vo;

public class DirectorVo {

  private Integer director_id;
  private String director_name; 
  private String director_img;
  private String director_birth;
  private Gender director_gender;
  private String director_story;
  private Integer d_trophy_list;
  
  
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
  
  public String getDirector_img() {
    return director_img;
  }
  public void setDirector_img(String director_img) {
    this.director_img = director_img;
  }
 
  public String getDirector_birth() {
    return director_birth;
  }
  public void setDirector_birth(String director_birth) {
    this.director_birth = director_birth;
  }
  
  public Gender getDirector_gender() {
    return director_gender;
  }
  public void setDirector_gender(Gender director_gender) {
    this.director_gender = director_gender;
  }
  
  public String getDirector_story() {
    return director_story;
  }
  public void setDirector_story(String director_story) {
    this.director_story = director_story;
  }
 
  public Integer getD_trophy_list() {
    return d_trophy_list;
  }
  public void setD_trophy_list(Integer d_trophy_list) {
    this.d_trophy_list = d_trophy_list;
  }
  
  
  @Override
  public String toString() {
    return "DirectorVo [director_id=" + director_id + ", director_name=" + director_name + ", director_img=" + director_img + ", director_birth=" + director_birth + ", director_gender="
        + director_gender + ", director_story=" + director_story + ", d_trophy_list=" + d_trophy_list + "]";
  }
  
}
