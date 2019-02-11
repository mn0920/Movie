<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/menu.css">

<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<style>
#navbar .topnav #my {
  color: black;
  font-weight: bold;
}

* {
  box-sizing: border-box
}

.container {
  width: 100%;
  background-color: #ddd;
}

.skills {
  text-align: right;
  padding: 10px;
  color: white;
}

.html {
  width: 90%;
  background-color: #4CAF50;
}

.css {
  width: 80%;
  background-color: #2196F3;
}

.js {
  width: 65%;
  background-color: #f44336;
}

.php {
  width: 60%;
  background-color: #808080;
}
input[type="text"]{
  font: 17px "Lato", Arial, sans-serif;
  color: #333;
  width: 80%;
  height: 33px;
  margin-bottom: 5px;
  letter-spacing: 1px;
  background: transparent;
  border: 0px;
}

.Center-Container {
  position: relative;
  height: 650px;
  width: 100%;
}

.Absolute-Center {
  width: 80%;
  height: 100%;
  min-height: 490px;
  overflow: auto;
  margin: auto;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  /* border: solid black; */
  padding: 10px;
}
</style>

<title>my</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function() {
	var nae = document.getElementById('ADGC').value
	console.log(nae);

	var jbSplit = nae.split(',');
	console.log(jbSplit[0]);
  console.log(jbSplit[1]);
  console.log(jbSplit[2]);
  console.log(jbSplit[3]);
  $('#1').val('1순위 : ' + jbSplit[0]);
  $('#2').val('2순위 : ' + jbSplit[1]);
  $('#3').val('3순위 : ' + jbSplit[2]);
  $('#4').val('4순위 : ' + jbSplit[3]);
});
</script>
<div>
  <jsp:include page="../menu.jsp" />
</div>
  <br>
  <hr>
  <div class="Center-Container">
    <div class="Absolute-Center">
    <h2>${user.nickname}님의MY</h2>
    <div>
      ${user.nickname}님께서 선택하신 영화를 고르실 때 보시는 기준입니다.<br> <input
        type="hidden" id="ADGC" value="${user.u_preference}">
      <%-- <c:forTokens items="${user.u_preference}" delims="," var="item">
        ${item}<br />
      </c:forTokens> --%>
    </div>
  
    <input type="text" id="1">
    <div class="container">
      <div class="skills html">90%</div>
    </div>
  
    <input type="text" id="2">
    <div class="container">
      <div class="skills css">80%</div>
    </div>
  
    <input type="text" id="3">
    <div class="container">
      <div class="skills js">65%</div>
    </div>
  
    <input type="text" id="4">
    <div class="container">
      <div class="skills php">60%</div>
    </div>
    <br>
    <hr>
    <br>
    <div><input type="text" value="${user.nickname}님께서좋아하시는장르 : ${user.u_favorite_genre_name}"> </div>
    <div><input type="text" value="${user.nickname}님께서좋아하시는배우 : ${user.u_favorite_actor_name}"> </div>
    <div><input type="text" value="${user.nickname}님께서좋아하시는감독 : ${user.u_favorite_director_name}"></div>
  </div>
</div>


  <script>
			
		</script>
</body>
</html>