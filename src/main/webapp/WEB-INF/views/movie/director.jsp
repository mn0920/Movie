<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/menu.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/movieUserActor.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
    
<style>
#navbar .topnav #D{
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
<!-- <style>
#navbar .topnav #D{
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
</style> -->
    <title>ActorDirector</title>
</head>
<body>

<jsp:include page="../menu.jsp" />

<br>

<hr>
<br>

<h2>Profile Card</h2>

<div class="row2">
  <c:forEach var="director" items="${director}">
    <a href="<%= request.getContextPath() %>/m/D/detail?director_id=${director.director_id}" class="none">
      <div class="card">
        <div class="content"> 
          <div class="poster">
          <img src="${director.director_img}">
          </div>
          <div class="name">
          <c:set var="TextValue" value="${director.director_name}"/>${fn:replace(director.director_name, '(', '<br>(')}</div>
          <p class="birth">${director.director_birth}</p>
          <p class="pro">${director.director_gender}</p>
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
      <a class="page-link" href="<%=request.getContextPath()%>/m/D?page=${pageMaker.startPage - 1}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}"><i class="fas fa-angle-left"></i></a>
    </li>
    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="i">
      <li class="page-item <c:if test="${pageMaker.criteria.page == i}">active</c:if>">
        <!-- c:if문을 사용해서 현재 페이지에 색이 나오게 했다. -->
        <a class="page-link" href="<%=request.getContextPath()%>/m/D?page=${i}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}">${i}</a>
      </li>
    </c:forEach>
    <li class="page-item <c:if test="${!(pageMaker.next)}">disabled</c:if>">
      <a class="page-link" href="<%=request.getContextPath()%>/m/D?page=${pageMaker.endPage + 1}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}"><i class="fas fa-angle-right"></i></a>
    </li>
  </ul>
</div>
<br><br>

</body>
</html>