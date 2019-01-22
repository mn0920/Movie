package kr.min.movie.vo;

import java.util.List;

public class GenreMutiListVo {

  private List<GenreListVo> genreMutiListVo = null;

  public List<GenreListVo> getGenreMutiListVo() {
    return genreMutiListVo;
  }

  public void setGenreMutiListVo(List<GenreListVo> genreMutiListVo) {
    this.genreMutiListVo = genreMutiListVo;
  }

  @Override
  public String toString() {
    return "GenreMutiListVo [genreMutiListVo=" + genreMutiListVo + "]";
  }
  
}
