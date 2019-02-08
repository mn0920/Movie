<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<script type="text/javascript">
$(document).ready(function(){
  var btn = document.getElementById('btn1');
  btn.disabled = true;
  var btn = document.getElementById('btn2');
  btn.disabled = true;
  var btn = document.getElementById('btn3');
  btn.disabled = true;
  var btn = document.getElementById('btn4');
  btn.disabled = true;
  var btn = document.getElementById('btn5');
  btn.disabled = true;
  var btn = document.getElementById('btn6');
  btn.disabled = true;
  var btn = document.getElementById('btn7');
  btn.disabled = true;
  var btn = document.getElementById('btn8');
  btn.disabled = true;
});
  </script>
<script type="text/javascript">
function ChangecatList1(){
  var btn1 = document.getElementById('btn1');
  //var select1 = document.getElementById('select1');
  var select1 = document.choose.select1.value;
  if(select1 == ""){
       btn1.disabled = true;
       console.log("as:",select1);
  } else {
      btn1.disabled = false;
      console.log("sa:",select1);
  }
  var cast1 = document.getElementById('cast1');
  console.log(cast1);
  cast1 = select1;
  console.log(cast1);
}
</script>
<script type="text/javascript">
function ChangecatList2(){
  var btn2 = document.getElementById('btn2');
  //var select2 = document.getElementById('select2');
  var select2 = document.choose.select2.value;
  if(select2 == ""){
      btn2.disabled = true;
  } else {
      btn2.disabled = false;
  }
}
</script>
<script type="text/javascript">
function ChangecatList3(){
  var btn3 = document.getElementById('btn3');
  var select3 = document.getElementById('select3').value;
  //var select3 = document.choose.select3.value;
  if(select3 == ""){
      btn3.disabled = true;
  } else {
      btn3.disabled = false;
  }
}
</script>
<script type="text/javascript">
function ChangecatList4(){
  var btn4 = document.getElementById('btn4');
  //var select4 = document.getElementById('select4');
  var select4 = document.choose.select4.value;
  if(select4 == ""){
      btn4.disabled = true;
  } else {
      btn4.disabled = false;
  }
}
</script>
<script type="text/javascript">
function ChangecatList5(){
  var btn5 = document.getElementById('btn5');
  //var select5 = document.getElementById('select5');
  var select5 = document.choose.select5.value;
  if(select5 == ""){
      btn5.disabled = true;
  } else {
      btn5.disabled = false;
  }
}
</script>
<script type="text/javascript">
function ChangecatList6(){
  var btn6 = document.getElementById('btn6');
  //var select6 = document.getElementById('select6');
  var select6 = document.choose.select6.value;
  if(select6 == ""){
      btn6.disabled = true;
  } else {
      btn6.disabled = false;
  }
}
</script>
<script type="text/javascript">
function ChangecatList7(){
  var btn7 = document.getElementById('btn7');
  //var select7 = document.getElementById('select7');
  var select7 = document.choose.select7.value;
  if(select7 == ""){
      btn7.disabled = true;
  } else {
      btn7.disabled = false;
  }
}
</script>
<script type="text/javascript">
function ChangecatList8(){
  var btn8 = document.getElementById('btn8');
  //var select8 = document.getElementById('select8');
  var select8 = document.choose.select8.value;
  if(select8 == ""){
      btn8.disabled = true;
  } else {
      btn8.disabled = false;
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
      console.log(str);
      var targetListId = 'actor_list'+str[str.length-1];
      var actor_list = document.getElementById("actor_list1").value;
      console.log(actor_list);
      var data = 'character'+str[str.length-1];
      var data2 = 'actor_id'+str[str.length-1];
        $('#selectCharacter').val(data)
        $('#selectCharacterId').val(data2)
        $('#'+targetListId).val(actor_list)
      console.log(data);
        openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
        console.log(openWin)
        /* openWin.document.getElementById("characterId").value = data; */

      });
    
    $(".actor").change(function(){
    	  var id = $(this).prop("id");
    	  var num = $("#"+id).prop("id").substring($("#"+id).prop("id").length-1);
    	  var targetId = 'actor_id'+num;
    	  if($(this).val() == ""){
    	    $("#"+targetId).val("");
    	    $("#select"+num).val("");
    	  }
    	});
    
    $(".character").change(function(){
        var id = $(this).prop("id");
        var num = $("#"+id).prop("id").substring($("#"+id).prop("id").length-1);
        var targetId = 'actor_list'+num;
        if($(this).val() == ""){
          $("#"+targetId).val("");
        }
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
       opener.document.getElementById("update1").value = "update";
       opener.$('#update1').trigger('change');
       window.opener.$('#m_actor_list').trigger('change');
     });
     
/*      opener.document.getElementById("m_actor_list").value = str;
     opener.document.getElementById("c_name").value = c.join(", ");
     window.opener.$('#m_actor_list').trigger('change'); 
      window.close();  */
  });
 });


 $(document).ready(function(){
   console.log('test');
   $('.actor').change(function(){
     console.log('c');
     $(this).parent().next().find('.character').prop('readonly', false);
   });
 });
</script>

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
  <input type="text" id="actor_list">
  <div class="row">
    <div class="col20">
      <label for="select1">주연/조연</label>
    </div>
      <div class="col37">
        <label for="character1">배우이름:</label>
      </div>
      <div class="col37">
        <label for="character1">배역이름:</label>
      </div>
    </div>
    <c:forEach var="actorList" items="${actorList}" varStatus="status">
      <div class="row">
        <div class="col20">
          <select class="form-control hei33" id="select${status.count}" name="cast" style="height: 33px;" onChange="ChangecatList${status.count}()">
            <option value="">배역</option>
            <option value="main"<c:if test="${actorList.cast == 'main'}"> selected</c:if>>주연</option>
            <option value="support"<c:if test="${actorList.cast == 'support'}"> selected</c:if>>조연</option>
          </select>
        </div>
        <div class="col37">
          <input type="text" class="form-control hei34 actor" id="character${status.count}" value="${actorList.actor_name}">
        </div>
        <div class="col37">
          <input type="text" class="form-control hei34 character" id="c_name${status.count}" value="${actorList.c_name}" name="c_name">
        </div>
      <div class="col5">
        <button type="button" class="btn" id="btn${status.count}" name="btn${status.count}" ><i class="fas fa-search"></i></button>
      </div>
    <input type="text" id="actor_id${status.count}" name="actor_id" value="${actorList.actor_id}" readonly>
    <input type="text" id="actor_list${status.count}" name="actor_list" value="${actorList.actor_list}">
    </div>
  </c:forEach>
  <c:if test="${actorList.size() < 8}">
    <c:forEach var="i" begin="0" end="${7-actorList.size()}" varStatus="status">
      <div class="row">
        <div class="col20">
          <select class="form-control hei33" id="select${status.index+actorList.size()+1}" name="cast" style="height: 33px;" onChange="ChangecatList${status.index+actorList.size()+1}()">
            <option value="">배역</option>
            <option value="main">주연</option>
            <option value="support">조연</option>
          </select>
        </div>
        <div class="col37">
          <input type="text" class="form-control hei34 actor" id="character${status.index+actorList.size()+1}">
        </div>
        <div class="col37">
          <input type="text" class="form-control hei34 character" id="c_name${status.index+actorList.size()+1}" name="c_name">
        </div>
      <div class="col5">
        <button type="button" class="btn" id="btn${status.index+actorList.size()+1}" name="btn${status.index+actorList.size()}" ><i class="fas fa-search"></i></button>
      </div>
      <input type="text" id="actor_id${status.index+actorList.size()+1}" name="actor_id">
      <input type="text" id="actor_list${status.index+actorList.size()+1}" name="actor_list">
      </div>
    </c:forEach>
  </c:if>
  <br>
  <button type="submit" class="done">배우목록 완료</button>
 </form>
</div>
<input type="hidden" id="selectCharacter">
<input type="hidden" id="selectCharacterId">


</body>
</html>
