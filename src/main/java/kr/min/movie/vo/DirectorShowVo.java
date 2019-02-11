package kr.min.movie.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DirectorShowVo extends DirectorVo {

	private Integer id;
	private String title;
	private Date open_date;
	private String grade;
	private String poster;
	private String cast;
	private String c_name;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getOpen_date() {
		return open_date;
	}

	public void setOpen_date(Date open_date) {
		this.open_date = open_date;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getCast() {
		return cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	@Override
	public String toString() {
		return "ActorShowVo [id=" + id + ", title=" + title + ", open_date=" + open_date + ", grade=" + grade
				+ ", poster=" + poster + ", cast=" + cast + ", c_name=" + c_name + "]";
	}

}
