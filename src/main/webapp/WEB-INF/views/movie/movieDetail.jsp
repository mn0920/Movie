<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25, .col-50, .col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 20px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text], textarea {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
  height: 17px;
}

textarea{
  margin-bottom: 0px;
}

label {
  margin-bottom: 10px;
  display: block;
  font-size: 13px;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* .Center-Container {
  position: relative;
  height: 100%;
}

.Absolute-Center {
  width: 1500px;
  height: 1100px;
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
} */

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media ( max-width : 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
<title>Insert title here</title>
</head>
<body>

  <div class="Center-Container">
    <div class="Absolute-Center">

      <div class="row">
        <div class="col-75">
          <div class="container">

            <div class="row">
              <div class="col-50">
                <h3>영화 정보</h3>
                <label for="subject">포스터</label>
                <div id="subject" name="subject"
                  style="height: 600px; border: solid 1px; margin-right: 10px;"></div>
              </div>

              <div class="row">
                <!--               <div class="col-50">
                <label for="state">줄거리</label>
                <textarea id="subject" name="subject" placeholder="이곳으로 내용을 끌고 올라옴" style="height:232px"></textarea>
              </div>
            </div> -->
              </div>

              <div class="col-50">
                <label for="title" style="margin-top:20px">영화 제목</label> <input type="text"
                  id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                <label for="title">영화 감독</label> <input type="text"
                  id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                <label for="title">출연 배우</label> <input type="text"
                  id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                <label for="title">영화 장르</label> <input type="text"
                  id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                <div class="row">

                  <div class="col-50">
                    <label for="title">개봉연도</label> <input type="text"
                      id="title" name="title"
                      placeholder="이곳으로 내용을 끌고 올라옴"> <label
                      for="title">전체 관람객</label> <input type="text"
                      id="title" name="title"
                      placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                  <div class="col-50">
                    <label for="title">상영시간</label> <input type="text"
                      id="title" name="title"
                      placeholder="이곳으로 내용을 끌고 올라옴"> <label
                      for="title">시청 가능 연령</label> <input type="text"
                      id="title" name="title"
                      placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>

                  <div class="col-50">
                    <label for="state">줄거리</label>
                    <textarea id="subject" name="subject"
                      placeholder="이곳으로 내용을 끌고 올라옴"
                      style="height: 232px"></textarea>
                  </div>
                </div>
              </div>

            </div>

          </div>
        </div>
        <div class="col-25">
          <div class="container">
            <!-- <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label> -->
            <input type="submit" value="Like" class="btn">
          </div>
        </div>
      </div>
</body>
</html>
