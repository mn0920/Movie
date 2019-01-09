<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSearch1.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (990 / 2);
    var popupY= (window.screen.height / 2) - (890 / 2);
  $('#close').click(function(){
    window.close();
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
</style>
<title>choiceActor</title>
</head>

<body>
  <div class="container">
    <h2>영화 검색</h2>
    <input type="text" id="myInput" class="input-large form-control" onChange="myFunction()" placeholder="Search for names.." title="Type in a name">

    <hr>

<form name="searchA">
    <div id="tableScroll" class="tableScroll">
      <table id="myTable" class="input-large form-control none" name="normal">
        <tr class="header">
          <th style="width: 8%;" name="checkList"><i class="far fa-check-circle"></i></th>
          <th style="width: 80%;">Name</th>
          <th style="width: 12%;">Open</th>
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
    <button type="button" id="choice">확인</button>
    </form>
    
    <br>
    <div style="margin-top:10px;">등록하고자 하는 영화가 없다면 진행을 눌러주세요.</div>
    <button type="button" id="close">진행</button>
   </div>
  <input type="text" id="characterId">
  
  
<script type="text/javascript">
$("#choice").click(function(){ 
  var data = $('input[type="radio"]:checked').val();
  //var id=$('#characterId').val();
  var id='character1';
  opener.document.getElementById(id).value = data;
});

    /* var name = $('input[type="radio"]')
    var rowData = new Array(); 
    var tdArr = new Array();
    var radiobtn = $("input[name=sel]:checked");
    */
</script>
</body>
</html>