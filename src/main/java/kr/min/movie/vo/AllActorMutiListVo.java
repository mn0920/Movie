package kr.min.movie.vo;

import java.util.List;

public class AllActorMutiListVo {

  private List<AllActorListVo> actorMutiListVo = null;

  public List<AllActorListVo> getActorMutiListVo() {
    return actorMutiListVo;
  }

  public void setActorMutiListVo(List<AllActorListVo> actorMutiListVo) {
    this.actorMutiListVo = actorMutiListVo;
  }

  @Override
  public String toString() {
    return "ActorMutiListVo [actorMutiListVo=" + actorMutiListVo + "]";
  }
  
}
