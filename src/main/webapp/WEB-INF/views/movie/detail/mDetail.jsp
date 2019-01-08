<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/menu.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/movieUserMain.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/uMDetail.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

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
   <div class="row">
     <div class="col-75">
      <div class="top-container">
        <div class="row">
          <div class="col-50">
            <h3>영화 정보</h3>
            <label for="subject">포스터</label>
            <div id="subject" name="subject" style="height: 600px; border: solid 1px; margin-right: 10px;"></div>
          </div>
          <div class="col-50">
            <label for="title" style="margin-top:20px">영화 제목</label>
            <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
            <label for="title">영화 감독</label>
            <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
            <label for="title">출연 배우</label>
            <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
            <label for="title">영화 장르</label>
            <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
              <label for="title">개봉연도</label>
              <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
              <label for="title">전체 관람객</label>
              <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
              <label for="title">상영시간</label>
              <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
              <label for="title">시청 가능 연령</label>
              <input type="text" id="title" name="title" placeholder="이곳으로 내용을 끌고 올라옴">
              <label for="state">줄거리</label>
              <textarea id="subject" name="subject" placeholder="이곳으로 내용을 끌고 올라옴" style="height: 232px"></textarea>
             </div>
           </div>
         </div>
      </div>
    </div>
   </div>
   <div class="col-25">
    <div class="bottom-container">
      <button type="button" class="btn" id="btn1" name="btn1" ><i class='far fa-heart'></i></button>
      <!-- <button type="button" class="btn" id="btn1" name="btn1" ><i class="fas fa-heart"></i></button> -->
    </div>
    <div class="container">
      
    </div>
   </div>
  </div>
 </div>
</div>
</div>
</body>
</html>