package kr.min.movie.vo;

import java.util.List;

public class AllDirectorListVo extends DirectorListVo {

	private String director_name;

	public String getDirector_name() {
		return director_name;
	}

	public void setDirector_name(String director_name) {
		this.director_name = director_name;
	}

	@Override
	public String toString() {
		return "AllDirectorListVo [director_name=" + director_name + "]";
	}

}
