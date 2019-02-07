package kr.min.movie.vo;

public class AccountVo {
  // 서버에서 사용하기 위한 객체를 만들기위한 것이다. 갖고 올 수 있고(회원가입), 가져다 놓을 수 있다(게시판에 자료 뿌리기).
  // VO의 멘버 변수 이름과 DB의 속성의 이름이 같아야한다. = 만약 다르다면 Mapping을 해줘야함.(나중에 할 것임)
  private String id;
  private String pw;
  private String email;
  private String age;
  private String nickname;
  private String author;
  private Integer u_favorite_genre_id;
  private String u_favorite_genre_name;
  private Integer u_favorite_actor_id;
  private String u_favorite_actor_name;
  private Integer u_favorite_director_id;
  private String u_favorite_director_name;
  private String u_preference;
  private String status;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPw() {
    return pw;
  }

  public void setPw(String pw) {
    this.pw = pw;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getAge() {
    return age;
  }

  public void setAge(String age) {
    this.age = age;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public Integer getU_favorite_genre_id() {
    return u_favorite_genre_id;
  }

  public void setU_favorite_genre_id(Integer u_favorite_genre_id) {
    this.u_favorite_genre_id = u_favorite_genre_id;
  }

  public String getU_favorite_genre_name() {
    return u_favorite_genre_name;
  }

  public void setU_favorite_genre_name(String u_favorite_genre_name) {
    this.u_favorite_genre_name = u_favorite_genre_name;
  }

  public Integer getU_favorite_actor_id() {
    return u_favorite_actor_id;
  }

  public void setU_favorite_actor_id(Integer u_favorite_actor_id) {
    this.u_favorite_actor_id = u_favorite_actor_id;
  }

  public String getU_favorite_actor_name() {
    return u_favorite_actor_name;
  }

  public void setU_favorite_actor_name(String u_favorite_actor_name) {
    this.u_favorite_actor_name = u_favorite_actor_name;
  }

  public Integer getU_favorite_director_id() {
    return u_favorite_director_id;
  }

  public void setU_favorite_director_id(Integer u_favorite_director_id) {
    this.u_favorite_director_id = u_favorite_director_id;
  }

  public String getU_favorite_director_name() {
    return u_favorite_director_name;
  }

  public void setU_favorite_director_name(String u_favorite_director_name) {
    this.u_favorite_director_name = u_favorite_director_name;
  }

  public String getU_preference() {
    return u_preference;
  }

  public void setU_preference(String u_preference) {
    this.u_preference = u_preference;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  @Override
  public String toString() {
    return "AccountVo [id=" + id + ", pw=" + pw + ", email=" + email + ", age=" + age + ", nickname=" + nickname + ", author=" + author + ", u_favorite_genre_id=" + u_favorite_genre_id
        + ", u_favorite_genre_name=" + u_favorite_genre_name + ", u_favorite_actor_id=" + u_favorite_actor_id + ", u_favorite_actor_name=" + u_favorite_actor_name + ", u_favorite_director_id="
        + u_favorite_director_id + ", u_favorite_director_name=" + u_favorite_director_name + ", u_preference=" + u_preference + ", status=" + status + "]";
  }

}
