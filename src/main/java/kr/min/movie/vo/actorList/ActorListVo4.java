package kr.min.movie.vo.actorList;

import kr.min.movie.vo.Cast;

public class ActorListVo4 {

  private Integer m_actor_list_id;
  private Integer actor_list;
  private Integer actor_id_4;
  private Cast cast;
  private String c_name;
  
  
  public Integer getM_actor_list_id() {
    return m_actor_list_id;
  }
  public void setM_actor_list_id(Integer m_actor_list_id) {
    this.m_actor_list_id = m_actor_list_id;
  }
  public Integer getActor_list() {
    return actor_list;
  }
  public void setActor_list(Integer actor_list) {
    this.actor_list = actor_list;
  }
  public Integer getActor_id_4() {
    return actor_id_4;
  }
  public void setActor_id_4(Integer actor_id_4) {
    this.actor_id_4 = actor_id_4;
  }
  public Cast getCast() {
    return cast;
  }
  public void setCast(Cast cast) {
    this.cast = cast;
  }
  public String getC_name() {
    return c_name;
  }
  public void setC_name(String c_name) {
    this.c_name = c_name;
  }
  @Override
  public String toString() {
    return "ActorListVo4 [m_actor_list_id=" + m_actor_list_id + ", actor_list=" + actor_list + ", actor_id_4=" + actor_id_4 + ", cast=" + cast + ", c_name=" + c_name + "]";
  }
  

}
