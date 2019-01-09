package kr.min.movie.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.min.movie.vo.GenreVo;

public interface AdminDao {
	
	public List<GenreVo> getGenre();
}
