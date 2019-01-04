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
<script type="text/javascript"
  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (500 / 2);
    var popupY= (window.screen.height / 2) - (250 / 2);
  $('#add').click(function(){
    window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho/addA','addActor','width=500,height=250,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
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
<!--     <script type="text/javascript">
    function choiced(){
      document.searchA.
    }
    </script> -->

<style>
* {
  box-sizing: inherit;
}

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

button {
  background-color: #87ceeb;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
  width:100%;
  height:30px;
  padding: 12px 20px;
  margin-top: 5px;
  margin-bottom: 5px;
  line-height: 0px;
}

button:hover {
  background-color: #6495ed;
}

.tableScroll {
  width: 100%;
  min-height: 200px;
  max-height: 200px;
  overflow-y: scroll;
  overflow-x:hidden;
  border: 1px solid rgba(0, 0, 0, .15);
  border-radius: .25rem;
  background-color: #fff;
}

.none{
 border-left: none;
 border-top: none;
 border-bottom: none;
 border-top-left-radius: 0;
 border-top-right-radius: 0px;
}
</style>
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
        <tr class="header">
          <th style="width: 8%;" name="checkList"><i class="far fa-check-circle"></i></th>
          <th style="width: 80%;">Name</th>
          <th style="width: 12%;">Birth</th>
        </tr>
        <tr>
          <td><input type="radio" value="Alfreds Futterkiste" name="sel"></td>
          <td>Alfreds Futterkiste</td>
          <td>Germany</td>
        </tr>
         <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>Berglunds snabbkop</td>
          <td>Sweden</td>
        </tr>
        <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>Island Trading</td>
          <td>UK</td>
        </tr>
        <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>Koniglich Essen</td>
          <td>Germany</td>
        </tr>
        <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>Laughing Bacchus Winecellars</td>
          <td>Canada</td>
        </tr>
        <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>Magazzini Alimentari Riuniti</td>
          <td>Italy</td>
        </tr>
        <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>North/South</td>
          <td>UK</td>
        </tr>
        <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>Paris specialites</td>
          <td>France</td>
        </tr>
        <tr>
          <td><input type="radio" value="${actor_id}" name="sel"></td>
          <td>Paris specialites</td>
          <td>France</td>
        </tr>
      </table>
    </div>
    <button type="button" id="choice">선택</button>
    </form>
    
    <br>
    <div style="margin-top:10px;">찾고자하는 배우가 없다면 추가 버튼을 눌러주세요</div>
    <button type="button" id="add" name="add">추가</button>
   </div>
  <input type="text" id="characterId">
  
  
<script type="text/javascript">
$("#choice").click(function(){ 
	var data = $('input[type="radio"]:checked').val();
	//var id=$('#characterId').val();
	var id='character1';
	opener.document.getElementById(id).value = data;
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