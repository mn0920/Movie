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

	$(document).ready(
			function() {
				document.getElementById("genre_list").value = opener.document.getElementById("genre_list").value;
				$('#done').click(function() {

					/* var data = []; */
					var chk = $('input[type="checkbox"]:checked').val();
					if (!chk) {
						alert('장르를 선택해주세요.');
					}

					var str = new String();
					var cnt = 0;

					$('input[type=checkbox]:checked').each(function() {
						var tmp = $(this).val();
						if (tmp != "") {
							if (cnt == 0)
								str += tmp;
							else
								str += ", " + tmp;
							cnt++;
						}
					});
					console.log(str);
					opener.document.getElementById("m_genre_list").value = str;
					window.close();
				});
			});
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

    <form name="searchA">
    <input type="text" id="genre_list" name="genre_list">
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
            <c:forEach var="genre" items="${genre}">
              <tr>
                <td><input type="checkbox"
                  value="${genre.genre_name}" name="sel"></td>
                <td>${genre.genre_id}</td>
                <td>${genre.genre_name}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
      <button type="button" id="check">확인</button>
    </form>

    <br>
    <div style="margin-top: 10px;">등록하고자 하는 영화가 없다면 진행을 눌러주세요.</div>
    <button type="button" id="done">진행</button>
  </div>


</body>
</html>