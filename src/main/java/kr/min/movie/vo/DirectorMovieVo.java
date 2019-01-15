package kr.min.movie.vo;

public class DirectorMovieVo {

  /* director */
  private Integer director_id;
  private String director_name;
  /* director_list */
  private Integer m_director_list_id;
  private Integer director_list;
  /* movie */
  private String title;
  private int id;
  
  
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
  
  public Integer getM_director_list_id() {
    return m_director_list_id;
  }
  public void setM_director_list_id(Integer m_director_list_id) {
    this.m_director_list_id = m_director_list_id;
  }
  
  public Integer getDirector_list() {
    return director_list;
  }
  public void setDirector_list(Integer director_list) {
    this.director_list = director_list;
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
    return "DirectorMovieVo [director_id=" + director_id + ", director_name=" + director_name
        + ", m_director_list_id=" + m_director_list_id + ", director_list=" + director_list + ", title=" + title + ", id=" + id + "]";
  }

}
