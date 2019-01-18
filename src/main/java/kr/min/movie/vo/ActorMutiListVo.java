package kr.min.movie.vo;

import java.util.List;

public class ActorMutiListVo {

  private List<ActorListVo> actorMutiListVo;

  public List<ActorListVo> getActorMutiListVo() {
    return actorMutiListVo;
  }

  public void setActorMutiListVo(List<ActorListVo> actorMutiListVo) {
    this.actorMutiListVo = actorMutiListVo;
  }

  @Override
  public String toString() {
    return "ActorMutiListVo [actorMutiListVo=" + actorMutiListVo + "]";
  }
  
}
