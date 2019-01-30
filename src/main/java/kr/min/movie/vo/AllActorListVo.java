package kr.min.movie.vo;

public class AllActorListVo extends ActorListVo {

  private String actor_name;

  public String getActor_name() {
    return actor_name;
  }

  public void setActor_name(String actor_name) {
    this.actor_name = actor_name;
  }

  @Override
  public String toString() {
    return "AllActorListVo [actor_name=" + actor_name + "]";
  }
  
  
}