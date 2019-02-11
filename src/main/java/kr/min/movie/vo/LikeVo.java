package kr.min.movie.vo;

import java.sql.Date;

public class LikeVo {
  private String account_id;
  private Integer id;
  private Integer like;
  private Date open_date;

  public String getAccount_id() {
    return account_id;
  }

  public void setAccount_id(String account_id) {
    this.account_id = account_id;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public Integer getLike() {
    return like;
  }

  public void setLike(Integer like) {
    this.like = like;
  }

  public Date getOpen_date() {
    return open_date;
  }

  public void setOpen_date(Date open_date) {
    this.open_date = open_date;
  }

  @Override
  public String toString() {
    return "LikeVo [account_id=" + account_id + ", id=" + id + ", like=" + like + ", open_date=" + open_date + "]";
  }

}
