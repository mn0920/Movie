<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nav.css">
  <%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminBasic.css"> --%>
  <%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminMain.css"> --%>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminActor.css">
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
  <title>actor</title>
</head>
<body>
    
 <div class="all">
 <jsp:include page="adminTopMenu.jsp" />

<div class="row">
<jsp:include page="adminSideMenu.jsp" />
 
  
<div class="main">
  <div class="container">
  
     <div class="main2">
      
      <h2>ACTOR</h2>
      
      <div id="myBtnContainer">
        <button class="btn active" onclick="filterSelection('all')"> Show all</button>
        <button class="btn" onclick="filterSelection('nature')"> Nature</button>
        <button class="btn" onclick="filterSelection('cars')"> Cars</button>
        <button class="btn" onclick="filterSelection('people')"> People</button>
      </div>
      
      <div class="row2">
        <c:forEach var="actor" items="${actor}">
          <a href="<%= request.getContextPath() %>/admin/actor/modify?actor_id=${actor.actor_id}" class="none">
            <div class="card">
              <div class="content"> 
                <div class="poster">
                  <img src='<%= request.getContextPath() %>/admin/displayFile?fileName=${actor.actor_img}'/>
                </div>
                <div class="name"><c:set var="TextValue" value="${actor.actor_name}"/>${fn:replace(actor.actor_name, '(', '<br>(')}</div>
                <p class="birth">${actor.actor_birth}</p>
                <p class="pro">${actor.actor_gender}</p>
                <a href="<%= request.getContextPath() %>/admin/actor/modify?actor_id=${actor.actor_id}"><button type="button" class="btn modify float-right">수정</button></a>
                <a href="<%= request.getContextPath() %>/admin/actor/delete?actor_id=${actor.actor_id}"><button type="button" class="btn delete float-right">삭제</button></a>
              </div>
            </div>
          </a>
        </c:forEach>
      </div>
    </div>
    
  </div>
</div>
</div>
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
<script>
$('#allCheck').click(function(){
    var check = false;
    if($('input:checkbox[name="checkList"]:checked').length == 0)
      check = true;
    $('input:checkbox[name="checkList"]').each(function(){
            /* this.checked = check; */
            $(this).prop('checked', check);
    })
    });
</script>
</body>
</html>