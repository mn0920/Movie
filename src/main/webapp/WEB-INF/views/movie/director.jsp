<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
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
</style>
    <title>ActorDirector</title>
</head>
<body>

<jsp:include page="../menu.jsp" />

<br>

<hr>

<h2>Profile Card</h2>

<div class="row2">
  <c:forEach var="director" items="${director}">
    <a href="#" class="none">
      <div class="card">
        <div class="poster">
          ${director.director_img}
        </div>
        <div class="name">${director.director_name}</div>
        <p class="birth">${director.director_birth}</p>
        <p class="pro">${director.director_gender}</p>
        <div style="margin: 24px 0;"></div>
        <button id="detail" name="detail" class="detail">See More</button>
      </div>
    </a>
  </c:forEach>
</div>

</body>
</html>