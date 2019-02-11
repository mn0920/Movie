package kr.min.movie.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GenreMovieVo extends MovieVo {

	private Integer genre_list;
	private Integer genre_id;

	public Integer getGenre_list() {
		return genre_list;
	}

	public void setGenre_list(Integer genre_list) {
		this.genre_list = genre_list;
	}

	public Integer getGenre_id() {
		return genre_id;
	}

	public void setGenre_id(Integer genre_id) {
		this.genre_id = genre_id;
	}

	@Override
	public String toString() {
		return "GenreMovieVo [genre_list=" + genre_list + ", genre_id=" + genre_id + "]";
	}

}
