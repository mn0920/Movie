package kr.min.movie.vo;

import java.util.List;

public class ActorListVo {

  private Integer m_actor_list_id;
  private Integer actor_list;
  private Integer actor_id;
  private String cast;
  private String c_name;
  private List<ActorListVo> a_list;
  private Integer show;
  

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
  
  public Integer getActor_id() {
    return actor_id;
  }
  public void setActor_id(Integer actor_id) {
    this.actor_id = actor_id;
  }
  
  public String getCast() {
    return cast;
  }
  public void setCast(String cast) {
    this.cast = cast;
  }
  
  public String getC_name() {
    return c_name;
  }
  public void setC_name(String c_name) {
    this.c_name = c_name;
  }
  
  public List<ActorListVo> getA_list() {
    return a_list;
  }
  public void setA_list(List<ActorListVo> a_list) {
    this.a_list = a_list;
  }
  
  public Integer getShow() {
    return show;
  }
  public void setShow(Integer show) {
    this.show = show;
  }
  
  @Override
  public String toString() {
    return "ActorListVo [m_actor_list_id=" + m_actor_list_id + ", actor_list=" + actor_list + ", actor_id=" + actor_id + ", cast=" + cast + ", c_name=" + c_name + ", show=" + show + "]";
  }

}
