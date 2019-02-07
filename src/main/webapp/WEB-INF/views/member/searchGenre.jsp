<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script type="text/javascript">
	function myFunction() {
		var input, filter, table, tr, td, i, txtValue;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		table = document.getElementById("myTable");
		tr = table.getElementsByTagName("tr");
		for (i = 0; i < tr.length; i++) {
			td = tr[i].getElementsByTagName("td")[2];
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

<style>
</style>
<title>choiceActor</title>
</head>

<body>
  <div class="container">
    <h2>영화 검색</h2>
    <input type="text" id="myInput" class="input-large form-control" 
    onChange="myFunction()" placeholder="Search for names.." title="Type in a name">

    <hr>

      <div id="tableScroll" class="tableScroll">
        <table id="myTable" class="input-large form-control none" name="normal">
          <thead>
            <tr class="header">
              <th style="width: 8%;" class="checkList"><i
                class="far fa-check-circle"></i></th>
              <th style="width: 20%;">Number</th>
              <th style="width: 50%;">Genre</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="genre" items="${genre}" varStatus="status">
              <tr>
                <td>
                  <input type="hidden" value="${genre.genre_id}" name="checkList">
                  <input type="radio" value="${genre.genre_name}">
                  <!-- genreMutiListVo[${status.index}]. -->
                </td>
                <td>${genre.genre_id}</td>
                <td>${genre.genre_name}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
      <input type="text" id="genre_list" name="genre_list">
      <button type="submit" id="done">확인</button>

  </div>
<script type="text/javascript">
var win;
function test(){
  setTimeout(() => {
    win.close();
    window.location.reload(); 
  }, 500);
  console.log(win);
};

$("#done").click(function(){ 
  var data = $('input[type="radio"]:checked').val();
  var data2 = $('input[type="radio"]:checked').parent().find('input[type="hidden"]').val();
  
  console.log(data);
  console.log(data2);
  alert("data" + data + "data2" + data2);
  
  if(!data){
      alert('인물을 선택해주세요.');
    }
  opener.document.getElementById('u_favorite_genre_name').value = data;
  opener.document.getElementById('u_favorite_genre_id').value = data2;
  window.opener.$('#update3').trigger('change');
  window.close();
});
</script>

</body>
</html>