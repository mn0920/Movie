<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSearchDirector1.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){

    var popupX = (window.screen.width / 2) - (750 / 2);
    var popupY= (window.screen.height / 2) - (351 / 2);
  $('#add').click(function(){
    win = window.open('<%=request.getContextPath()%>/admin/MM/seaD/cho/addD','Director','width=750,height=351,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  });
});
</script>

  <script type="text/javascript">
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

<title>choiceDirector</title>
</head>

<body>
  <div class="container">
    <h2>감독 이름 검색</h2>
    <input type="text" id="myInput" class="input-large form-control" onChange="myFunction()" placeholder="Search for names.." title="Type in a name">

    <hr>

    <div id="tableScroll" class="tableScroll">
      <table id="myTable" class="input-large form-control none" name="normal">
        <thead>
          <tr class="header">
            <th style="width: 8%;" name="checkList"><i class="far fa-check-circle"></i></th>
            <th style="width: 32%;">이름</th>
            <th style="width: 60%;">최근 영화</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="director"  items="${director}">
              <tr>
                <td>
                  <input type="radio" value="${director.director_name}">
                  <input type="hidden" value="${director.director_id}">
                </td>
                <td>${director.director_name}</td>
                <td>${director.title}</td>
              </tr>
            </c:forEach>
        </tbody>
      </table>
    </div>
    <button type="button" id="choice">선택</button>
    
    <br>
   </div>
  <input type="hidden" id="directorId">
  <input type="hidden" id="update" onchange="test()">
  
  
<script type="text/javascript">
var win;
function test(){
  setTimeout(() => {
    win.close();
    window.location.reload(); 
  }, 500);
  console.log(win);
};

$("#choice").click(function(){ 
  var data = $('input[type="radio"]:checked').val();
  var data2 = $('input[type="radio"]:checked').parent().find('input[type="hidden"]').val();
  
  console.log(data);
  console.log(data2);
  
  if(!data){
      alert('인물을 선택해주세요.');
    }
  opener.document.getElementById('u_favorite_director_name').value = data;
  opener.document.getElementById('u_favorite_director_id').value = data2;
  window.opener.$('#update2').trigger('change');
  window.close();
});
</script>
</body>
</html>