package kr.min.movie.service;

import java.util.List;

import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.BoardVo;

public interface BoardService {

  public void addMovie(BoardVo boardVo);

}
