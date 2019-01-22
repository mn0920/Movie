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
function ChangecatList(){
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
      var data = 'character'+str[str.length-1];
      var data2 = 'actor_id'+str[str.length-1];
        $('#selectCharacter').val(data)
        $('#selectCharacterId').val(data2)
      console.log(data);
        openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
        console.log(openWin)
        /* openWin.document.getElementById("characterId").value = data; */

      });
});

</script>
  
 <script type="text/javascript">
 $(document).ready(function(){
   $('#loading').hide();
   document.getElementById("actor_list").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list1").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list2").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list3").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list4").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list5").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list6").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list7").value = opener.document.getElementById("actor_list").value;
   document.getElementById("actor_list8").value = opener.document.getElementById("actor_list").value;
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
  <input type="text" id="actor_list" name="actor_list">
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
    <div class="row">
      <div class="col20">
        <select class="form-control hei33" id="select1" name="actorMutiListVo[0].cast" style="height: 33px;" onChange="ChangecatList()">
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col37">
        <input type="text" class="form-control hei34 actor" id="character1" readonly required>
      </div>
      <div class="col37">
        <input type="text" class="form-control hei34 character" id="c_name1" name="actorMutiListVo[0].c_name" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn1" name="btn1" ><i class="fas fa-search"></i></button>
    </div>
  <input type="text" id="actor_id1" name="actorMutiListVo[0].actor_id" readonly>
  <input type="text" id="actor_list1" name="actorMutiListVo[0].actor_list">
  </div>
    
  <div class="row mart5">
    <div class="col20">
      <select class="form-control hei33" id="select2" name="actorMutiListVo[1].cast" style="height: 33px;" onchange="ChangecatList2()">
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 actor" id="character2" readonly >
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 character" id="c_name2" name="actorMutiListVo[1].c_name"readonly >
    </div>
  <div class="col5">
    <button type="button" class="btn" id="btn2" name="btn2" ><i class="fas fa-search"></i></button>
  </div>
<input type="text" id="actor_id2" name="actorMutiListVo[1].actor_id" readonly>
<input type="text" id="actor_list2" name="actorMutiListVo[1].actor_list">
</div>
    
  <div class="row mart5">
    <div class="col20">
      <select class="form-control hei33" id="select3" name="actorMutiListVo[2].cast" style="height: 33px;" onchange="ChangecatList3()">
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 actor" id="character3" readonly>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 character" id="c_name3" name="actorMutiListVo[2].c_name" readonly>
    </div>
  <div class="col5">
    <button type="button" class="btn" id="btn3" name="btn3"><i class="fas fa-search"></i></button>
  </div>
<input type="text" id="actor_id3" name="actorMutiListVo[2].actor_id" readonly>
<input type="text" id="actor_list3" name="actorMutiListVo[2].actor_list">
</div>
    
  <div class="row mart5">
    <div class="col20">
      <select class="form-control hei33" id="select4" name="actorMutiListVo[3].cast" style="height: 33px;" onchange="ChangecatList4()">
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 actor" id="character4" readonly>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 character" id="c_name4" name="actorMutiListVo[3].c_name"readonly>
    </div>
  <div class="col5">
    <button type="button" class="btn" id="btn4" name="btn4"><i class="fas fa-search"></i></button>
  </div>
<input type="text" id="actor_id4" name="actorMutiListVo[3].actor_id" readonly>
<input type="text" id="actor_list4" name="actorMutiListVo[3].actor_list">
</div>
    
  <div class="row mart5">
    <div class="col20">
      <select class="form-control hei33" id="select5" name="actorMutiListVo[4].cast" style="height: 33px;" onchange="ChangecatList5()">
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 actor" id="character5" readonly>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 character" id="c_name5" name="actorMutiListVo[4].c_name"readonly>
    </div>
  <div class="col5">
    <button type="button" class="btn" id="btn5" name="btn5"><i class="fas fa-search"></i></button>
  </div>
<input type="text" id="actor_id5" name="actorMutiListVo[4].actor_id" readonly>
<input type="text" id="actor_list5" name="actorMutiListVo[4].actor_list">
</div>
    
  <div class="row mart5">
    <div class="col20">
      <select class="form-control hei33" id="select6" name="actorMutiListVo[5].cast" style="height: 33px;" onchange="ChangecatList6()">
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 actor" id="character6" readonly>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 character" id="c_name6" name="actorMutiListVo[5].c_name"readonly>
    </div>
  <div class="col5">
    <button type="button" class="btn" id="btn6" name="btn6"><i class="fas fa-search"></i></button>
  </div>
<input type="text" id="actor_id6" name="actorMutiListVo[5].actor_id" readonly>
<input type="text" id="actor_list6" name="actorMutiListVo[5].actor_list">
</div>
    
  <div class="row mart5">
    <div class="col20">
      <select class="form-control hei33" id="select7" name="actorMutiListVo[6].cast" style="height: 33px;" onchange="ChangecatList7()">
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 actor" id="character7" readonly>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 character" id="c_name7" name="actorMutiListVo[6].c_name"readonly>
    </div>
  <div class="col5">
    <button type="button" class="btn" id="btn7" name="btn7"><i class="fas fa-search"></i></button>
  </div>
<input type="text" id="actor_id7" name="actorMutiListVo[6].actor_id" readonly>
<input type="text" id="actor_list7" name="actorMutiListVo[6].actor_list">
</div>
    
  <div class="row mart5">
    <div class="col20">
      <select class="form-control hei33" id="select8" name="actorMutiListVo[7].cast" style="height: 33px;" onchange="ChangecatList8()">
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 actor" id="character8" readonly>
    </div>
    <div class="col37">
      <input type="text" class="form-control hei34 character" id="c_name8" name="actorMutiListVo[7].c_name" readonly>
    </div>
  <div class="col5">
    <button type="button" class="btn" id="btn8" name="btn8"><i class="fas fa-search"></i></button>
  </div>
  <input type="text" id="actor_id8" name="actorMutiListVo[7].actor_id" readonly>
  <input type="text" id="actor_list8" name="actorMutiListVo[7].actor_list">
  </div>
  <br>
  <button type="submit" class="done">배우목록 완료</button>
 </form>
</div>
<input type="hidden" id="selectCharacter">
<input type="hidden" id="selectCharacterId">


</body>
</html>
