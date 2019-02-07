<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nav.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminBasic.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/movieUserMain.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminMain.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<title>movie</title>
</head>
<body>

<div class="all">
<jsp:include page="adminTopMenu.jsp" />

<div class="row">
<jsp:include page="adminSideMenu.jsp" />


<div class="main">
  <div class="container">

    <div class="main2">

      <h2>MOVIE</h2>

      <div class="row2">
        <div id="myBtnContainer">
          <button class="btn active" onclick="filterSelection('all')">Show all</button>
          <button class="btn" onclick="filterSelection('nature')"> Nature</button>
          <button class="btn" onclick="filterSelection('cars')"> Cars</button>
          <button class="btn" onclick="filterSelection('people')"> People</button>
          <button type="button" class="btn btn-outline-dark" id="allCheck">Select all</button>
        </div>
      </div>

      <div class="row2">
        <c:forEach var="movie" items="${movie}">
          <div class="column ${movie.genre_name}">
            <div class="content">
              <div class="poster">
                <img src='<%= request.getContextPath() %>/admin/displayFile?fileName=${movie.poster}'/>
              </div>
              <div class="context">
                <h4>${movie.title}</h4>
                <p>감독 : ${movie.director_name}</p>
                <p>출연 배우 : ${movie.actor_name}</p>
                <p>
                <c:set var="TextValue" value="${movie.synopsis}" />${fn:substring(TextValue,0,30)}....</p>
                <a href="<%= request.getContextPath() %>/admin/movie/delete?id=${movie.id}"><button type="button" class="btn delete float-right">삭제</button></a>
                <a href="<%= request.getContextPath() %>/admin/movie/modify?id=${movie.id}"><button type="button" class="btn modify float-right">수정</button></a>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
      
      <div id="pagination">
      <!-- 가운데 정렬을 하기위해 div에 id를 부여했다. -->
      <ul class="pagination">
        <!-- ul은 부트스트렙 예제를 가지고 와서 고정된 1,2,3을 foreach로 바꾼것이다. -->
        <li class="page-item <c:if test="${!(pageMaker.prev)}">disabled</c:if>">
          <!-- c:if를 사용해서 사용이 가능하게, 가능하지 못하게 한 것이다. -->
          <a class="page-link" href="<%=request.getContextPath()%>/admin/movie?page=${pageMaker.startPage - 1}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}"><i class="fas fa-angle-left"></i></a>
        </li>
        <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="i">
          <li class="page-item <c:if test="${pageMaker.criteria.page == i}">active</c:if>">
            <!-- c:if문을 사용해서 현재 페이지에 색이 나오게 했다. -->
            <a class="page-link" href="<%=request.getContextPath()%>/admin/movie?page=${i}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}">${i}</a>
          </li>
        </c:forEach>
        <li class="page-item <c:if test="${!(pageMaker.next)}">disabled</c:if>">
          <a class="page-link" href="<%=request.getContextPath()%>/admin/movie?page=${pageMaker.endPage + 1}&search=${pageMaker.criteria.search}&type=${pageMaker.criteria.type}"><i class="fas fa-angle-right"></i></a>
        </li>
      </ul>
    </div>
    <a href="<%=request.getContextPath()%>/admin/movie/addM">
      <button class="btn btn-primary">등록</button>
    </a>
	<br><br>
      
    </div>

  </div>
  <!-- end of main -->
</div>
<!-- end of container -->


</div>
<!-- end of TopMenu -->
</div>
<!-- end of SideMenu -->


<script>
filterSelection("all")
function filterSelection(c) {
	var x, i;
	x = document.getElementsByClassName("column");
	if (c == "all")
		c = "";
	for (i = 0; i < x.length; i++) {
		w3RemoveClass(x[i], "show");
		if (x[i].className.indexOf(c) > -1)
			w3AddClass(x[i], "show");
	}
}

function w3AddClass(element, name) {
	var i, arr1, arr2;
	arr1 = element.className.split(" ");
	arr2 = name.split(" ");
	for (i = 0; i < arr2.length; i++) {
		if (arr1.indexOf(arr2[i]) == -1) {
			element.className += " " + arr2[i];
		}
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
	btns[i].addEventListener("click", function() {
		var current = document.getElementsByClassName("active");
		current[0].className = current[0].className.replace(
				" active", "");
		this.className += " active";
	});
}
</script>
<script>
$('#allCheck').click(function() {
	var check = false;
	if ($('input:checkbox[name="checkList"]:checked').length == 0)
		check = true;
	$('input:checkbox[name="checkList"]').each(function() {
		/* this.checked = check; */
		$(this).prop('checked', check);
	})
});
</script>
</body>
</html>