<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
  rel="stylesheet" type="text/css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
  integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
  crossorigin="anonymous">
<link rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
  integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
  crossorigin="anonymous">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/adminSearch1.css">
<script type="text/javascript"
  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<style>

.main {
  position: relative;
  height: 100%;
}

#loading {
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  position: fixed;
  display: block;
  opacity: 0.8;
  background: white;
  z-index: 99;
  text-align: center;
}

#loading > img {
  width: 5%;
  height: 10%;
  margin-left:0;
  position: absolute;
  top: 40%;
  left: 47%;
  z-index: 100;
}

#loading > label {
  height: 10%;
  position: absolute;
  margin-left:0;
  top: 50%;
  left: 35%;
  z-index: 100;
}
</style>
<title>choiceActor</title>
</head>

<body>
<div class="main">
  <div id="loading">
    <img id="loading-image" src="<%=request.getContextPath() %>/resources/images/loading.gif" alt="Loading..." />
    <label id="loading-image">영화 제목을 입력하는 중입니다.</label>
  </div>
  <div class="container">
    <h2>영화 검색</h2>
    <form id="form" name="form" method="POST">
      <input type="text" id="myInput" class="input-large form-control"
        onKeyDown="myFunction()" placeholder="Search for names.."
        title="Type in a name" name="title">
      <div style="margin-top: 10px;">등록하고자 하는 영화가 없다면 진행을 눌러주세요.</div>
      <button type="submit" id="close">진행</button>
      <!--  onclick="javascript:email_mainform();" -->
    </form>

    <hr>

    <div id="tableScroll" class="tableScroll">
      <table id="myTable" class="input-large form-control none" name="normal">
        <thead>
          <tr class="header">
            <th style="width: 8%;" name="checkList"><i class="far fa-check-circle"></i></th>
            <th style="width: 55%;">Title</th>
            <th style="width: 40%;">Open</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="movie" items="${movie}">
            <tr>
              <td>
                <input type="radio" value="${movie.title}" name="sel">
                <input type="hidden" value="${movie.id}">
              </td>
              <td>${movie.title}</td>
              <td>${movie.open_date}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
    <button type="button" id="check">확인</button>
    <!--  onClick="location.href='<%-- <%=request.getContextPath() %> --%>admin/MM/seaM?movieName=form.myInput.value' -->
  </div>
  <input type="hidden" id="aaaa" value="${state}">
</div>



<script type="text/javascript">
var state = $("#aaaa").val();
	$(document).ready(function() { 
    $('#loading').hide();  
    if(state == 1){
      $('#loading').show();
    }
   });

$("form").submit(function(){
  var title = $('#myInput').val();
  opener.document.getElementById('update').value = "update";
  opener.document.getElementById("title").value = title;
  opener.$('#update').trigger('change');
  opener.$('#title').trigger('change');
}); 

document.addEventListener('keydown', function(event) {
    if (event.keyCode === 13) {
        event.preventDefault();
    }
}, true);

  function myFunction() {
	  
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[1];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  }
  
</script>
</body>
</html>