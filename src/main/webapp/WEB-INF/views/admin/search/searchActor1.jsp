<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSearch1.css">
<script type="text/javascript"
  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){

    var popupX = (window.screen.width / 2) - (750 / 2);
    var popupY= (window.screen.height / 2) - (351 / 2);
  $('#add').click(function(){
    win = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho/addA','addActor','width=750,height=351,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
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

<title>choiceActor</title>
</head>

<body>
  <div class="container">
    <h2>배우 이름 검색</h2>
    <input type="text" id="myInput" class="input-large form-control" onChange="myFunction()" placeholder="Search for names.." title="Type in a name">

    <hr>

<form name="searchA">
    <div id="tableScroll" class="tableScroll">
      <table id="myTable" class="input-large form-control none" name="normal">
        <thead>
          <tr class="header">
            <th style="width: 8%;" name="checkList"><i class="far fa-check-circle"></i></th>
            <th style="width: 80%;">Name</th>
            <th style="width: 12%;">Birth</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="actor"  items="${actor}">
            <tr>
              <td>
                <input type="radio" value="${actor.actor_name}" name="sel">
                <input type="hidden" value="${actor.actor_id}">
              </td>
              <td>${actor.actor_name}</td>
              <td>${actor.actor_birth}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
    <button type="button" id="choice">선택</button>
    </form>
    
    <br>
    <div style="margin-top:10px;">찾고자하는 배우가 없다면 추가 버튼을 눌러주세요</div>
    <button type="button" id="add" name="add">추가</button>
   </div>
  <input type="hidden" id="characterId">
  <input type="text" id="update" onchange="test()">
  
  
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
	
	var id=opener.document.getElementById('selectCharacter').value;
  var aid=opener.document.getElementById('selectCharacterId').value;
  if(!data){
	    alert('인물을 선택해주세요.');
	  }
	opener.document.getElementById(id).value = data;
  opener.document.getElementById(aid).value = data2;
	/* $(opener.document).find('.actor').trigger('change'); */
	window.opener.$('#'+id).trigger('change');
	/* opener.document.getElementById(id).trigger('change'); */
	window.close();
});



    /* var name = $('input[type="radio"]')
    var rowData = new Array(); 
    var tdArr = new Array();
    var radiobtn = $("input[name=sel]:checked");
    */
</script>
</body>
</html>