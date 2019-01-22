<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSearch.css">
<!-- <script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script type="text/javascript"
  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>


<title>searchActor</title>
</head>
<body>
 <div id="loading">
  <img id="loading-image" src="<%=request.getContextPath() %>/resources/images/loading.gif" alt="Loading..." />
  <label id="loading-image">배우 리스트를 입력하는 중입니다.</label>
 </div>
 <div class="container">
<br>
<form name="choose" method="POST">
  <input type="text" id="actor_list" name="actor_list">
  <table id="myTable" class="input-large form-control none" name="normal">
    <!-- actor_list(movie.id) -->
    <thead>
      <tr class="header">
        <th style="width: 20%;">주연/조연</th>
        <th style="width: 20%;">배우이름</th>
        <th style="width: 20%;">배역이름</th>
        <th style="width: 20%;">배우이름검색</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>
          <select class="form-control hei33" id="select1" name="actor_list" style="height: 33px;" onChange="ChangecatList()">
            <option value="">배역</option>
            <option value="main">주연</option>
            <option value="support">조연</option>
          </select>  
        </td>
        <td><input type="text" class="form-control hei34 actor" id="character1" name="character" readonly></td>
        <td><input type="text" class="form-control hei34 character" id="c_name1" name="c_name" readonly></td>
        <td><button type="button" class="btn" id="btn1" name="btn1" ><i class="fas fa-search"></i></button></td>
      </tr>
  </table>
  <br>
  <button type="button" id='btn-add-row'>행 추가하기</button>
  <button type="button" id='btn-delete-row'>행 삭제하기</button>
  <hr>
  <button type="submit" class="done">배우목록 완료</button>
 </form>
 <input type="text" id="selectCharacter">
</div>

<script src="//code.jquery.com/jquery.min.js"></script>
<script>
<script type="text/javascript">
$(document).ready(function(){
  var btn = document.getElementById('btn1');
  btn.disabled = true;
});
  </script>
<script type="text/javascript">
function ChangecatList(){
  var btn1 = document.getElementById('btn'+);
  //var select1 = document.getElementById('select1');
  var select1 = document.choose.select1.value;
  if(select1 == ""){
    btn1.disabled = true;
    console.log("as:",select1);
  } else {
    btn1.disabled = false;
    console.log("sa:",select1);
  }
}
</script>
<script type="text/javascript">
$(document).ready(function(){
  var popupX = (window.screen.width / 2) - (430 / 2);
  var popupY= (window.screen.height / 2) - (500 / 2);
  $('.btn').click(function(){
    //character
    var str = $(this).prop('id');
    var data = 'character'+str[str.length-1];
      $('#selectCharacter').val(data)
    console.log(data);
    openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
    console.log(openWin)
  /*  openWin.document.getElementById("characterId").value = data; */

  });
});

</script>
  
<script type="text/javascript">
$(document).ready(function(){
  $('#loading').hide();
  document.getElementById("actor_list").value = opener.document.getElementById("actor_list").value;
  var state = $("#aaaa").val();
$('.done').click(function(){
  var str = new String();
  var cnt = 0;
  var a = new Array();
  var c = new Array();
    /* $('input[type=text]').each(function(){ */
    $('.actor').each(function(){
      var tmp = $(this).val();
      /* a.push(tmp); */
      if(tmp != ""){
        a.push(tmp);
      }
    });
    $('.character').each(function(){
      var tmp = $(this).val();
      /* c.push(tmp); */
      if(tmp != ""){
        c.push(tmp);
      }
    });
    
    var arr = new Array(); 
    for(i=0; i<a.length; i++){
      var tmp = a[i] + "(" + c[i] + ")";
      arr.push(tmp);
    }
    str = arr.join(", ");

    $("form").submit(function(){
      $('.container').hide();
      $('#loading').show();
      opener.document.getElementById("m_actor_list").value = str;
      opener.document.getElementById("c_name").value = c.join(", ");
      opener.document.getElementById('update1').value = "update";
      opener.$('#update1').trigger('change');
      window.opener.$('#m_actor_list').trigger('change');
    });
});
});

 $(document).ready(function(){
   console.log('test');
   $('.actor').change(function(){
    console.log('c');
    $(this).parent().next().find('.character').prop('readonly', false);
   });
 });

 
 var i = ('#myTable tr').length -10;
  var lol1 = $('#myTable');
  var lol2 = $('#myTable tr');
  var last = $('#myTable > tbody:last');
  

  $('#btn-add-row').click(function() {
	    var num = i++;
	    if(i < 9){
	      $(last).append('<tr>'+
	        '<td><select class="form-control hei33" id="select' + i +'" name="actor_list" onChange="ChangecatList()">'
	        +'<option value="">배역</option><option value="main">주연</option><option value="support">조연</option></select></td>'
	        +'<td><input type="text" class="form-control hei34 actor" id="character'+ i +'" name="character" readonly></td>'
	        +'<td><input type="text" class="form-control hei34 character" id="c_name'+ i +'" name="c_name" readonly></td>'
	        +'<td><button type="button" class="btn" id="' + i + '"' + ' name="' + i + '"><i class="fas fa-search"></i></button></td>'
	        +'</tr>');
	      num = i;
	      console.log(i);
	    } else {
	      alert('배우는 최대 8명까지만 등록할 수 있습니다.');
	    }
	  });
  console.log('myTable'+lol1);
  console.log('tr'+lol2);
  $('#btn-delete-row').click(function() {
    $('#myTable > tbody:last > tr:last').remove();
    var num = i--;
    num = i;
    console.log(i);
  });
</script>
</body>
</html>
