<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nav.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminBasic.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/movieUserMain.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminMain.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
<style>
.card {
max-width: 250px;
text-align: center;
font-family: arial;
display : inline-block;
background-color: white;
padding: 0px;
}

.name {
  display: inline-block;
  margin: 20px 10px 5px 10px;
}

.birth {
  color: grey;
}

.pro{
  display: block;
  margin-block-start: 1em;
  margin-block-end: 1em;
  margin-inline-start: 0px;
  margin-inline-end: 0px;
}

.detail {
  border: none;
  /* outline: 0; */
  display: inline-block;
  padding: 8px;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
  margin: 0px;
}
</style>
    
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

<div class="row2">
<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')"> female</button>
  <button class="btn" onclick="filterSelection('cars')"> male</button>
  <button type="button" class="btn btn-outline-dark"  id="allCheck">Select all</button>
</div>
</div>

<!-- Portfolio Gallery Grid -->
<div class="row2">
  <div class="column nature">
    <div class="card">
      <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Mountains" style="width:100%">
      <div class="name">이주영</div><input type="checkbox" value="${bbs.num}" name="checkList">
      <p class="birth">1992년 2월 14일</p>
      <p class="pro">오늘의 탐정</p>
      <button id="detail" name="detail" class="detail">See More</button>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Lights" style="width:100%">
      <h4>Lights</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Nature" style="width:100%">
      <h4>Forest</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  
  <div class="column cars">
    <div class="content">
      <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Car" style="width:100%">
      <h4>Retro</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Car" style="width:100%">
      <h4>Fast</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column cars">
    <div class="content">
    <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Car" style="width:100%">
      <h4>Classic</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>

  <div class="column people">
    <div class="content">
      <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Car" style="width:100%">
      <h4>Girl</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Car" style="width:100%">
      <h4>Man</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="<%=request.getContextPath()%>/resources/images/1.jpg" alt="Car" style="width:100%">
      <h4>Woman</h4><input type="checkbox" value="${bbs.num}" name="checkList">
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>
    
    </div><!-- end of main -->
  </div><!-- end of container -->
  
  
</div><!-- end of TopMenu -->
</div><!-- end of SideMenu -->


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