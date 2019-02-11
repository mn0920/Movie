<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSearch.css">
<!-- <script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  var popupX = (window.screen.width / 2) - (430 / 2);
  var popupY= (window.screen.height / 2) - (500 / 2);
  $('.btn').click(function(){
    //character
    var str = $(this).prop('id');
    var data = 'director'+str[str.length-1];
    var data2 = 'director_id'+str[str.length-1];
    var targetListId = 'director_list'+str[str.length-1];
    var director_list = document.getElementById("director_list1").value;
      $('#selectDirector').val(data)
      $('#selectDirectorId').val(data2)
      $('#'+targetListId).val(director_list)
    console.log(director_list);
    console.log(data);
    console.log(data2);
    openWin = window.open('<%=request.getContextPath()%>/admin/MM/modify/seaD/cho','choiceDirector','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
    console.log(openWin);
    /* openWin.document.getElementById("characterId").value = data; */
  });
});

</script>
  
 <script type="text/javascript">
 $(document).ready(function(){
   $('#loading').hide();
   document.getElementById("director_list").value = opener.document.getElementById("director_list").value;
   document.getElementById("director_list1").value = opener.document.getElementById("director_list").value;
   document.getElementById("director_list2").value = opener.document.getElementById("director_list").value;
   var state = $("#aaaa").val();
  $('.done').click(function(){
  var str = new String();
  var cnt = 0;
  var d = new Array();
  /* $('input[type=text]').each(function(){ */
  $('.director').each(function(){
    var tmp = $(this).val();
    if(tmp != ""){
        d.push(tmp);
        console.log(tmp);
        console.log(d);
      }
  });

  if(d < 2){
    str = d;
  } else{
    str = d.join(", ");
  }

    $("form").submit(function(){
      $('.container').hide();
      $('#loading').show();
    opener.document.getElementById("m_director_list").value = str;
    opener.document.getElementById('update2').value = "update";
    opener.$('#update2').trigger('change');
    window.opener.$('#m_director_list').trigger('change');
    });
  });
 });


 $(document).ready(function(){
   console.log('test');
   $('.director').change(function(){
     console.log('d');
     $(this).parent().next().find('.director').prop('readonly', false);
   });
 });
</script>

<title>searchDirector</title>
</head>
<body>
<div id="loading">
 <img id="loading-image" src="<%=request.getContextPath() %>/resources/images/loading.gif" alt="Loading..." />
 <label id="loading-image">감독 리스트를 입력하는 중입니다.</label>
</div>
<div class="container">
<br>
<form method="POST">
  <input type="text" id="director_list" name="director_list">
  <div class="row">
    <div class="col20">
      <label for="select1">감독</label>
    </div>
      <div class="col75">
        <label for="character1">감독이름:</label>
      </div>
    </div>
    <c:forEach var="directorList" items="${directorList}" varStatus="status">
	    <div class="row mart5">
	      <div class="col20">
	        <label for="director1" class="form-control hei33" style="height: 33px;" readonly>감독</label>
	      </div>
	      <div class="col75">
	        <input type="text" class="form-control hei34 director" id="director1" value="${directorList.director_name}">
	      </div>
	      <div class="col5">
	        <button type="button" id="btn1" class="btn"><i class="fas fa-search"></i></button>
	      </div>
	      <input type="text" class="form-control hei34" id="director_id1" value="${directorList.director_id}" name="director_id">
	      <input type="text" id="director_list1" value="${directorList.director_list}" name="director_list">
	    </div>
    </c:forEach>
  <br>
  <c:if test="${directorList.size() < 2}">
    <c:forEach var="i" begin="0" end="${1-directorList.size()}" varStatus="status">
      <div class="row">
        <div class="col20">
          <label for="director2" class="form-control hei33" style="height: 33px;" readonly>감독</label>
        </div>
        <div class="col75">
	      <input type="text" class="form-control hei34 director" id="director${status.index+directorList.size()+1}" readonly>
        </div>
      <div class="col5">
        <button type="button" id="btn${status.index+directorList.size()+1}" class="btn"><i class="fas fa-search"></i></button>
      </div>
        <input type="text" class="form-control hei34" id="director_id${status.index+directorList.size()+1}" name="director_id" readonly>
        <input type="text" id="director_list${status.index+directorList.size()+1}" name="director_list">
      </div>
    </c:forEach>
  </c:if>
  <button type="submit" class="done">감독 선택 완료</button>
</form>
</div>
<input type="hidden" id="selectDirector">
<input type="hidden" id="selectDirectorId">


</body>
</html>
