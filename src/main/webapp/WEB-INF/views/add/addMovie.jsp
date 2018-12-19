<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>add Movie</title>
<head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.Center-Container {
  position: relative;
  height: 100%;
}

.Absolute-Center {
  width: 70%;
  height: 800px;;
  min-height: 730px;
  min-width: 730px;
  overflow: auto;
  margin: auto;
  margin-top: 0; position : absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  padding: 10px;
  position: absolute;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

  <div class="Center-Container" style="width: 100%; height: 100%;">
    <div class="Absolute-Center">

      <h2>영화 등록 창</h2>
      <p>영화를 입력해주세요</p>

      <div class="container">
        <form method="POST">
          <div class="row">
            <div class="col-25">
              <label for="title">Title</label>
            </div>
            <div class="col-75">
              <input type="text" id="title" name="title" placeholder="영화의 제목을 적어주세요">
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="genre_list">genre</label>
            </div>
            <div class="col-75">
              <input type="text" id="genre_list" name="genre_list" placeholder="영화의 장르를 적어주세요.">
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="director_list"">director</label>
            </div>
            <div class="col-75">
              <input type="text" id="director_list" name="director_list" placeholder="영화 감독을 적어주세요">
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="actor_list">actor</label>
            </div>
            <div class="col-75">
              <input type="text" id="actor_list" name="actor_list" placeholder="출연한 배우들의 이름을 적어주세요">
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="open_date">open date</label>
            </div>
            <div class="col-25">
              <select id="open_date" name="yyyy">
                <option value="null">YYYY</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
                <option value="2011">2011</option>
                <option value="2012">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
              </select>
            </div>
            <div class="col-25">
              <select id="open_date" name="mm">
                <option value="null">MM</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
            </div>
            <div class="col-25">
              <select id="open_date" name="dd">
                <option value="null">dd</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="rate">Rate(관람가능 연령)</label>
            </div>
            <div class="col-25">
              <input type="text" id="rate" name="rate" placeholder="관람 가능 연령을 적어주세요">
            </div>
            <!-- <div class="row"> -->
            <div class="col-25">
              <label for="poster" style="float: right;">poster</label>
            </div>
            <div class="col-25">
              <input type="text" id="poster" name="poster" placeholder="포스터 링크를 걸어주세요">
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="running_time">running time</label>
            </div>
            <div class="col-25">
              <input type="text" id="running_time" name="running_time" placeholder="상영 시간을 적어주세요">
            </div>
            <!-- <div class="row"> -->
            <div class="col-25">
              <label for="grade" style="float: right;">grade(관객수)</label>
            </div>
            <div class="col-25">
              <input type="text" id="grade" name="grade" placeholder="전체 관객 수를 적어주세요">
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="synopsis">synopsis</label>
            </div>
            <div class="col-75">
              <textarea id="synopsis" name="synopsis" placeholder="영화 줄거리를 적어주세요" style="height: 200px"></textarea>
            </div>
          </div>
          <div class="row">
            <input type="submit" value="Submit">
          </div>
        </form>
      </div>
    </div>
  </div>

</body>
</html>