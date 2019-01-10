package kr.min.movie.vo;

public class DirectorListVo {

  private Integer m_director_list_id;
  private Integer director_list;
  private Integer director_id;
  
  
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
  
  public Integer getDirector_id() {
    return director_id;
  }
  public void setDirector_id(Integer director_id) {
    this.director_id = director_id;
  }
  
  
  @Override
  public String toString() {
    return "DirectorListVo [m_director_list_id=" + m_director_list_id + ", director_list=" + director_list + ", director_id=" + director_id + "]";
  }
  
  
}
