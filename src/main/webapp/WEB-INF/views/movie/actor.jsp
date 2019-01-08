<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
  
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">  
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/menu.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
    
<style>
#navbar .topnav #A{
color: black;
font-weight: bold;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 250px;
  margin: 10px;
  text-align: center;
  font-family: arial;
  display : inline-block;
}

.name {
  margin-top: 10px;
  font-size: 30px;
}

.birth {
  color: grey;
  font-size: 18px;
}

.pro{
  display: block;
  margin-block-start: 1em;
  margin-block-end: 1em;
  margin-inline-start: 0px;
  margin-inline-end: 0px;
  font-size: 22px;
}

.detail {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.look {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

.detail:hover, .look:hover {
  opacity: 0.7;
}

.none{
background-color: #f1f1f1;
text-decoration: none;
color: black;
}
</style>
    <title>ActorDirector</title>
</head>
<body>

<jsp:include page="../menu.jsp" />

<br>

<hr>

<h2>Profile Card</h2>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

<a href="#" class="none">
  <div class="card">
    <img src="/movie/resources/images/sample.jpg" alt="John"
      style="width: 100%">
    <div class="name">이주영</div>
    <p class="birth">1992년 2월 14일</p>
    <p class="pro">오늘의 탐정</p>
    <div style="margin: 24px 0;"></div>
    <button id="detail" name="detail" class="detail">See More</button>
  </div>
</a>

</body>
</html>