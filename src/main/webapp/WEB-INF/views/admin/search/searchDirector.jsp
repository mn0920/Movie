<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
  integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
  crossorigin="anonymous">
<link rel="stylesheet"
  href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
  integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
  crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSearch.css">
<!-- <script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script type="text/javascript"
  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
    $('.btn').click(function(){
      //character
      var str = $(this).prop('id');
      var data = 'director'+str[str.length-1];
      console.log(data);
      openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaD/cho','choiceDirector','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
      console.log(openWin)
      openWin.document.getElementById("directorId").value = data;

      });
});
<%-- $('#btn1').click(function(){
  openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
});
$('#btn2').click(function(){
  openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  });
 --%>
</script>
  
 <script type="text/javascript">
 $(document).ready(function(){
  $('.done').click(function(){
    var str = new String();
    var cnt = 0;
     $('input').each(function(){
       var tmp = $(this).val();
       if(tmp != ""){
         if(cnt == 0)
           str += tmp;
         else
           str += ", "+tmp;
         cnt++;
       }
     });
      opener.document.getElementById("director_list").value = str;
      window.close();
  });
 });
</script>

<title>searchDirector</title>
</head>
<body>
 <div class="container">
<br>
<form name=choose>
  <div class="row">
      <div class="col20">
        <label for="select1">감독</label>
      </div>
        <div class="col75">
          <label for="character1">감독이름:</label>
        </div>
      </div>
    <div class="row mart5">
      <div class="col20">
        <label for="director1" class="form-control hei33" style="height: 33px;" onchange="ChangecatList8()" required>감독</label>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="director1" name="director1" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn8" name="btn8"><i class="fas fa-search"></i></button>
    </div>
  </div>
    <div class="row mart5">
      <div class="col20">
        <label for="director2" class="form-control hei33" style="height: 33px;" onchange="ChangecatList8()" required>감독</label>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="director2" name="director2" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn8" name="btn8"><i class="fas fa-search"></i></button>
    </div>
  </div>
  <br>
  <button type="button" class="done">감독 선택 완료</button>
 </form>
</div>

<script type="text/javascript">

</script>

</body>
</html>
