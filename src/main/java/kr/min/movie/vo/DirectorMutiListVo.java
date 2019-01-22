package kr.min.movie.vo;

import java.util.List;

public class DirectorMutiListVo {

  private List<DirectorListVo> directorMutiListVo = null;

  public List<DirectorListVo> getDirectorMutiListVo() {
    return directorMutiListVo;
  }

  public void setDirectorMutiListVo(List<DirectorListVo> directorMutiListVo) {
    this.directorMutiListVo = directorMutiListVo;
  }

  @Override
  public String toString() {
    return "DirectorMutiListVo [directorMutiListVo=" + directorMutiListVo + "]";
  }
  
}
