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
#navbar .topnav #R{
color: black;
font-weight: bold;
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

<h2>RECOMMEND</h2>

<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')"> Nature</button>
  <button class="btn" onclick="filterSelection('cars')"> Cars</button>
  <button class="btn" onclick="filterSelection('people')"> People</button>
</div>

<!-- Portfolio Gallery Grid -->

	<div class="row2">
	  <c:forEach var="movie" items="${movie}" begin="0" end="7" step="1">
	    <div class="column ${movie.genre_name}">
	      <div class="content"> 
	        <img src="${movie.poster}">
	        <h4><c:set var="TextValue" value="${movie.title}"/>${fn:replace(movie.title, '(', '<br>(')}</h4>
	        <p>감독 : <c:set var="TextValue" value="${movie.director_name}"/>${fn:substringBefore(movie.director_name, ',') }</p>
	        <p>출연 배우 : <c:set var="TextValue" value="${movie.actor_name}"/>${fn:substringBefore(movie.actor_name, ',') }</p>
	        <p><c:set var="TextValue" value="${movie.synopsis}"/>${fn:substring(TextValue,0,50)}....</p>
	      </div>
	    </div>
	  </c:forEach>
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
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
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
</script>
    
</body>
</html>