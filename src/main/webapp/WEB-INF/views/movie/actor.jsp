<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/menu.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/movieUserActor.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    
    
    <title>ActorDirector</title>
</head>
<body>

<jsp:include page="../menu.jsp" />

<br>

<hr>
<div class="main2">

<h2>Profile Card</h2>

<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')"> Nature</button>
  <button class="btn" onclick="filterSelection('cars')"> Cars</button>
  <button class="btn" onclick="filterSelection('people')"> People</button>
</div>

<div class="row2">
  <c:forEach var="actor" items="${actor}">
    <a href="<%= request.getContextPath() %>/m/A/detail?actor_id=${actor.actor_id}" class="none">
      <div class="card">
        <div class="content"> 
          <div class="poster">
          <img src="${actor.actor_img}">
          </div>
          <div class="name">
          <c:set var="TextValue" value="${actor.actor_name}"/>${fn:replace(actor.actor_name, '(', '<br>(')}</div>
          <p class="birth">${actor.actor_birth}</p>
          <p class="pro">${actor.actor_gender}</p>
        </div>
      </div>
    </a>
  </c:forEach>
</div>
</div>

</body>
</html>