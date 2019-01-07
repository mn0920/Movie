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
  //var select3 = document.getElementById('select3');
  var select3 = document.choose.select3.value;
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
    	var data = 'character'+str[str.length-1];
    	console.log(data);
    	  openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
    	  console.log(openWin)
    	  openWin.document.getElementById("characterId").value = data;

    	});
});
<%-- $('#btn1').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
});
$('#btn2').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
	});
$('#btn3').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  });
$('#btn4').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  });
$('#btn5').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  });
$('#btn6').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  });
$('#btn7').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  });
$('#btn8').click(function(){
	openWin = window.open('<%=request.getContextPath()%>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  }); --%>
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
      opener.document.getElementById("actor_list").value = str;
      window.close();
  });
 });
</script>

<title>searchActor</title>
</head>
<body>
 <div class="container">
<br>
<form name=choose>
  <div class="row">
      <div class="col20">
        <label for="select1">주연/조연</label>
      </div>
        <div class="col75">
          <label for="character1">배우이름:</label>
        </div>
      </div>
      <div class="row">
        <div class="col20">
          <select class="form-control hei33" id="select1" name="select1" style="height: 33px;" onChange="ChangecatList()" required>
            <option value="">배역</option>
            <option value="main">주연</option>
            <option value="support">조연</option>
          </select>
        </div>
        <div class="col75">
          <input type="text" class="form-control hei34" id="character1" name="character1" readonly required>
        </div>
      <div class="col5">
        <button type="button" class="btn" id="btn1" name="btn1" ><i class="fas fa-search"></i></button>
      </div>
    </div>
      
    <div class="row mart5">
      <div class="col20">
        <select class="form-control hei33" id="select2" name="select2" style="height: 33px;" onchange="ChangecatList2()" required>
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="character2" name="character2" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn2" name="btn2" "><i class="fas fa-search"></i></button>
    </div>
  </div>
      
    <div class="row mart5">
      <div class="col20">
        <select class="form-control hei33" id="select3" name="select3" style="height: 33px;" onchange="ChangecatList3()" required>
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="character3" name="character3" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn3" name="btn3"><i class="fas fa-search"></i></button>
    </div>
  </div>
      
    <div class="row mart5">
      <div class="col20">
        <select class="form-control hei33" id="select4" name="select4" style="height: 33px;" onchange="ChangecatList4()" required>
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="character4" name="character4" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn4" name="btn4"><i class="fas fa-search"></i></button>
    </div>
  </div>
      
    <div class="row mart5">
      <div class="col20">
        <select class="form-control hei33" id="select5" name="select5" style="height: 33px;" onchange="ChangecatList5()" required>
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="character5" name="character5" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn5" name="btn5"><i class="fas fa-search"></i></button>
    </div>
  </div>
      
    <div class="row mart5">
      <div class="col20">
        <select class="form-control hei33" id="select6" name="select6" style="height: 33px;" onchange="ChangecatList6()" required>
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="character6" name="character6" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn6" name="btn6"><i class="fas fa-search"></i></button>
    </div>
  </div>
      
    <div class="row mart5">
      <div class="col20">
        <select class="form-control hei33" id="select7" name="select7" style="height: 33px;" onchange="ChangecatList7()" required>
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="character7" name="character7" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn7" name="btn7"><i class="fas fa-search"></i></button>
    </div>
  </div>
      
    <div class="row mart5">
      <div class="col20">
        <select class="form-control hei33" id="select8" name="select8" style="height: 33px;" onchange="ChangecatList8()" required>
          <option value="">배역</option>
          <option value="main">주연</option>
          <option value="support">조연</option>
        </select>
      </div>
      <div class="col75">
        <input type="text" class="form-control hei34" id="character8" name="character8" readonly required>
      </div>
    <div class="col5">
      <button type="button" class="btn" id="btn8" name="btn8"><i class="fas fa-search"></i></button>
    </div>
  </div>
  <br>
  <button type="button" class="done">배우목록 완료</button>
 </form>
</div>

<script type="text/javascript">

</script>

</body>
</html>
