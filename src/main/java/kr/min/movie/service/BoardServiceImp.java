package kr.min.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.BoardDao;
import kr.min.movie.vo.BoardVo;

@Service
public class BoardServiceImp implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Override
	public void addMovie(BoardVo boardVo) {
		boardDao.addMovie(boardVo);
	}

/*  @Override
  public void searchActor(String[] actor) {
    String actorList = boardVo.getActor_list(); // 스트링 문자 POWER
    String[] actor; // 스트링을 담을 배열

    actor = actorList.split(","); // 배열에 한글자씩 저장하기

    for (int i = 0; i < actor.length; i++) { // 출력
      System.out.println(actor[i]);
  }
  }*/
	
}
