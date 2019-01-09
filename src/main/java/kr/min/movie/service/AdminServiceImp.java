package kr.min.movie.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import kr.min.movie.dao.AdminDao;
import kr.min.movie.pagenation.Criteria;
import kr.min.movie.pagenation.PageMaker;
import kr.min.movie.vo.AccountVo;
import kr.min.movie.vo.GenreVo;

@Service
public class AdminServiceImp implements AdminService {

	@Autowired
	AdminDao adminDao;

  @Override
  public List<GenreVo> getGenre() {
    return adminDao.getGenre();
  }


}
