package kr.min.movie.vo;

public class ActorVo {

  private Integer actor_id;
  private String actor_name;
  private String actor_img;
  private String actor_birth;
  private String actor_contry;
  private Gender actor_gender;
  private String actor_stroy;
  
  public Integer getActor_id() {
    return actor_id;
  }
  public void setActor_id(Integer actor_id) {
    this.actor_id = actor_id;
  }
  
  public String getActor_name() {
    return actor_name;
  }
  public void setActor_name(String actor_name) {
    this.actor_name = actor_name;
  }
  
  public String getActor_img() {
    return actor_img;
  }
  public void setActor_img(String actor_img) {
    this.actor_img = actor_img;
  }
  
  public String getActor_birth() {
    return actor_birth;
  }
  public void setActor_birth(String actor_birth) {
    this.actor_birth = actor_birth;
  }
  
  public String getActor_contry() {
    return actor_contry;
  }
  public void setActor_contry(String actor_contry) {
    this.actor_contry = actor_contry;
  }
  
  public Gender getActor_gender() {
    return actor_gender;
  }
  public void setActor_gender(Gender actor_gender) {
    this.actor_gender = actor_gender;
  }
  
  public String getActor_stroy() {
    return actor_stroy;
  }
  public void setActor_stroy(String actor_stroy) {
    this.actor_stroy = actor_stroy;
  }
  
  @Override
  public String toString() {
    return "ActorVo [actor_id=" + actor_id + ", actor_name=" + actor_name + ", actor_img=" + actor_img + ", actor_birth=" + actor_birth + ", actor_contry=" + actor_contry + ", actor_gender="
        + actor_gender + ", actor_stroy=" + actor_stroy + "]";
  }
  
}
