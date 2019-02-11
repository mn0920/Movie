package kr.min.movie.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ActorShowVo {

	private Integer id;
	private String title;
	private Date open_date;
	private String grade;
	private String poster;
	private String cast;
	private String c_name;
	private Integer actor_id;
	private String actor_name;
	private String actor_img;
	private String actor_birth;
	private String actor_country;
	private Gender actor_gender;
	private String actor_story;
	private Integer a_trophy_list;

	public Integer getActor_id() {
		return actor_id;
	}

	public void setActor_id(Integer actor_id) {
		this.actor_id = actor_id;
	}

	public String getActor_name() {
		return actor_name;
	}

	public void setActor_name(String actor_name) {
		this.actor_name = actor_name;
	}

	public String getActor_img() {
		return actor_img;
	}

	public void setActor_img(String actor_img) {
		this.actor_img = actor_img;
	}

	public String getActor_birth() {
		return actor_birth;
	}

	public void setActor_birth(String actor_birth) {
		this.actor_birth = actor_birth;
	}

	public String getActor_country() {
		return actor_country;
	}

	public void setActor_country(String actor_country) {
		this.actor_country = actor_country;
	}

	public Gender getActor_gender() {
		return actor_gender;
	}

	public void setActor_gender(Gender actor_gender) {
		this.actor_gender = actor_gender;
	}

	public String getActor_story() {
		return actor_story;
	}

	public void setActor_story(String actor_story) {
		this.actor_story = actor_story;
	}

	public Integer getA_trophy_list() {
		return a_trophy_list;
	}

	public void setA_trophy_list(Integer a_trophy_list) {
		this.a_trophy_list = a_trophy_list;
	}

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
				+ ", poster=" + poster + ", cast=" + cast + ", c_name=" + c_name + ", actor_id=" + actor_id
				+ ", actor_name=" + actor_name + ", actor_img=" + actor_img + ", actor_birth=" + actor_birth
				+ ", actor_country=" + actor_country + ", actor_gender=" + actor_gender + ", actor_story=" + actor_story
				+ ", a_trophy_list=" + a_trophy_list + "]";
	}

}
