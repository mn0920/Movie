package kr.min.movie.vo;

public class GenreListVo {

  private Integer m_genre_list_id;
  private Integer genre_list;
  private Integer genre_id;
  
  
  public Integer getM_genre_list_id() {
    return m_genre_list_id;
  }
  public void setM_genre_list_id(Integer m_genre_list_id) {
    this.m_genre_list_id = m_genre_list_id;
  }
  
  public Integer getGenre_list() {
    return genre_list;
  }
  public void setGenre_list(Integer genre_list) {
    this.genre_list = genre_list;
  }
 
  public Integer getGenre_id() {
    return genre_id;
  }
  public void setGenre_id(Integer genre_id) {
    this.genre_id = genre_id;
  }
  
  
  @Override
  public String toString() {
    return "GenreListVo [m_genre_list_id=" + m_genre_list_id + ", genre_list=" + genre_list + ", genre_id=" + genre_id + "]";
  }
  
  
}
