package kr.min.movie.vo;

public class DirectorMovieVo {

  /* director */
  private String director_name;
  /* director_list */
  private Integer director_id;
  /* movie */
  private String title;
  private int id;
  
  
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


  @Override
  public String toString() {
    return "DirectorMovieVo [director_name=" + director_name + ", director_id=" + director_id
              + ", title=" + title + ", id=" + id + "]";
  }

}
