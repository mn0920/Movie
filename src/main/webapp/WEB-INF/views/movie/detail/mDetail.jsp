<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/menu.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/movieUserMain.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/uMDetail.css">
<link rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
  integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
  crossorigin="anonymous">

<title>Movie Detail</title>
</head>
<body>

  <jsp:include page="../../menu.jsp" />

  <br>

  <hr>
  <!-- MAIN (Center website) -->
  <div class="main2">
    <br>
    <div class="Center-Container">
      <div class="Absolute-Center">
        <div class="row col-80">
          <div class="top-container">
          
            <div class="col-100">
              <h3>영화 정보</h3>
              <label for="subject">포스터</label>
            </div>
            <div class="col-50 left">
              <div id="subject" name="subject" class="poster"></div>
              <button type="button" class="btn" id="btn1" name="btn1">
                <i class='far fa-heart'></i>
              </button>
            </div>
            
            <div class="col-50 right">
              <div class="row">
                  <div class="col-25">
                    <label for="genre_list">영화 제목</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴" readonly>
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="genre_list">영화 감독</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="genre_list">출연 배우</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="genre_list">영화 장르</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="genre_list">개봉연도</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="genre_list">전체 관람객</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="genre_list">상영시간</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                </div>
                <div class="row">
                  <div class="col-25">
                    <label for="genre_list">시청 가능 연령</label>
                  </div>
                  <div class="col-75">
                    <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
                  </div>
                </div>
              </div>
              <div class="col-100 bottom">
                <div class="row">
                  <div class="col-25">
                  <label for="subject">줄거리</label>
                  </div>
                </div>
                <textarea id="subject" name="subject" placeholder="이곳으로 내용을 끌고 올라옴" style="height: 232px"></textarea>
              </div>
          </div>
        </div>
        
        <div class="right-container">
          <div class="bottom-container">
            <div class="col-100">
              <button type="button" class="btn" id="btn1" name="btn1">
                <i class='far fa-heart'></i>
              </button>
              <!-- <button type="button" class="btn" id="btn1" name="btn1" ><i class="fas fa-heart"></i></button> -->
            </div>
          </div>
          <div class="comments-container"></div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>