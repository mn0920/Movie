<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/menu.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/movieUserMain.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


<style>
#navbar .topnav #main{
color: black;
font-weight: bold;
}
p{
margin-bottom: 5px;
margin-top: 0;
font-size: 0.9em;
}
a{
color: black;
}
#pagination {
  display: table;
  margin: 0 auto;
}
.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
}
.pagination a.active {
  background-color: dodgerblue;
  color: white;
}
.pagination a:hover:not(.active) {background-color: #ddd;}
</style>

    <title>main</title>
</head>
<body>

<jsp:include page="../menu.jsp" />

<br>

<hr>
<!-- MAIN (Center website) -->
<div class="main2">
<br>

<h2>MOVIE
(${genre_name})</h2>
<%-- <form method="GET">
      <div class="input-group mt-3 mb-3">
        <div class="form-group" style="margin: 0";>
          <select class="form-control" name="type">
            <option value=0>제목</option>
            <option value=1>작성자</option>
            <option value=2>내용</option>
            <option value=3>제목+내용</option>
          </select>
          </div>
          <input type="text" class="form-control" placeholder="Search" name="search" value="${pageMaker.criteria.search}">
          <button class="btn btn-success" type="submit">검색</button>
      </div>
    </form> --%>

<div id="myBtnContainer">
<form>
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <c:forEach var="genre" items="${genre}" >
    <button class="btn <c:if test="${genre.genre_id} eq '${id}'">active</c:if>" name="genre_id" value="${genre.genre_id}"> ${genre.genre_name}</button>
  </c:forEach>
</form>
</div>

<!-- Portfolio Gallery Grid -->

	<div class="row2">
	  <c:forEach var="movie" items="${movie}" >
	     <div class="column">
	      	<div class="content"> 
	          <a href="<%= request.getContextPath() %>/m/m/detail?id=${movie.id}&page=${pageMaker.criteria.page}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}"><img src="${movie.poster}">
	          <h4><c:set var="TextValue" value="${movie.title}"/>${fn:replace(movie.title, '(', '<br>(')}</h4>
	          <p>감독 : <c:set var="TextValue" value="${movie.director_name}"/>${fn:substringBefore(movie.director_name, ',') }</p>
	          <p>출연 배우 : <c:set var="TextValue" value="${movie.actor_name}"/>${fn:substringBefore(movie.actor_name, ',') }</p>
	          <p><c:set var="TextValue" value="${movie.synopsis}"/>${fn:substring(TextValue,0,50)}....</p>
	        </div>
	      </div>
		</a>
	  </c:forEach>
	</div>

    <div id="pagination">
      <!-- 가운데 정렬을 하기위해 div에 id를 부여했다. -->
      <ul class="pagination">
        <!-- ul은 부트스트렙 예제를 가지고 와서 고정된 1,2,3을 foreach로 바꾼것이다. -->
        <li class="page-item <c:if test="${!(pageMaker.prev)}">disabled</c:if>">
          <!-- c:if를 사용해서 사용이 가능하게, 가능하지 못하게 한 것이다. -->
          <a class="page-link" href="<%=request.getContextPath()%>/m/main?page=${pageMaker.startPage - 1}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}"><i class="fas fa-angle-left"></i></a>
        </li>
        <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="i">
          <li class="page-item <c:if test="${pageMaker.criteria.page == i}">active</c:if>">
            <!-- c:if문을 사용해서 현재 페이지에 색이 나오게 했다. -->
            <a class="page-link" href="<%=request.getContextPath()%>/m/main?page=${i}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}">${i}</a>
          </li>
        </c:forEach>
        <li class="page-item <c:if test="${!(pageMaker.next)}">disabled</c:if>">
          <a class="page-link" href="<%=request.getContextPath()%>/m/main?page=${pageMaker.endPage + 1}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}"><i class="fas fa-angle-right"></i></a>
        </li>
      </ul>
    </div>
	<br><br>
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(", ");
  arr2 = name.split(", ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}

if(${alert} == 1){ 
    alert('회원분들께서만 영화 추천란을 이용하실 수 있습니다.'); 
  } 

if(${alert} == 0){ 
    alert('회원분들께서만 내 서재란을 이용하실 수 있습니다.'); 
  } 
</script>
    
</body>
</html>