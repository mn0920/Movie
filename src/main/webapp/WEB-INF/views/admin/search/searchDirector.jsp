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

<style>
body {
  background-color: #fafafa;
}

.container {
  margin: 20px auto;
  max-width: 400px;
}

h2 {
  margin: 30px auto;
}
</style>
<title>searchDirector</title>
</head>

<body>
  <div class="container">
    <h2>감독 이름 검색</h2>
    <input type="text" id="myInput" class="input-large form-control"
      onChange="myFunction()" placeholder="Search for names.."
      title="Type in a name">

    <hr>

    <table id="myTable" class="combobox input-large form-control"
      name="normal">
      <tr class="header">
        <th><input type="checkbox" value="${bbs.num}"
          name="checkList"></th>
        <th style="width: 80%;">Name</th>
        <th style="width: 20%;">Country</th>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>Alfreds Futterkiste</td>
        <td>Germany</td>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>Berglunds snabbkop</td>
        <td>Sweden</td>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>Island Trading</td>
        <td>UK</td>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>Koniglich Essen</td>
        <td>Germany</td>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>Laughing Bacchus Winecellars</td>
        <td>Canada</td>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>Magazzini Alimentari Riuniti</td>
        <td>Italy</td>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>North/South</td>
        <td>UK</td>
      </tr>
      <tr>
        <td><input type="checkbox" value="${bbs.num}" name="checkList">
        <td>Paris specialites</td>
        <td>France</td>
      </tr>
    </table>
  </div>

  <script>
			function myFunction() {
				var input, filter, table, tr, td, i, txtValue;
				input = document.getElementById("myInput");
				filter = input.value.toUpperCase();
				table = document.getElementById("myTable");
				tr = table.getElementsByTagName("tr");
				for (i = 0; i < tr.length; i++) {
					td = tr[i].getElementsByTagName("td")[0];
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
