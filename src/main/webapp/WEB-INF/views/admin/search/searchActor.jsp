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
<!-- <script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script type="text/javascript"  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  var btn = document.getElementById('btn1');
  btn.disabled = true;
});
</script>
<script type="text/javascript">
function ChangecatList(){
  var btn = document.getElementById('btn1');
  var select1 = document.getElementById('select1');
  if(select1 != "")
     btn.disabled = false;
}
</script>
<script type="text/javascript">
$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#btn1').click(function(){
  window.open('<%= request.getContextPath() %>/admin/MM/seaA/cho','choiceActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
});
});
</script>

<style>
* {
  box-sizing: inherit;
}

body {
  background-color: #fafafa;
}

.col20{
 width: 20%;
}
.col75{
 width: 65%;
}
.col5{
 width: 10%;
}
.row{
 margin-left: 0px;
 margin-right: 0px;
 padding: 20px;
}
</style>

<title>searchActor</title>
</head>
<body>

<form name="choose" method="POST">
  <div class="row">
    <div class="col20">
      <label for="validationCustom03">주연/조연</label>
      <select class="form-control" id="select1" name="select1" onchange="ChangecatList()" required>
        <option value="">배역</option>
        <option value="main">주연</option>
        <option value="support">조연</option>
      </select>
      <div class="invalid-feedback"></div>
    </div>
    <div class="col75">
      <label for="validationCustom04">Activity:</label>
      <input type="text" class="form-control" id="character1" name="character1" required></select>
      <div class="invalid-feedback">Please provide an activity.</div>
    </div>
    <div class="col5">
      <button type="button" class="btn" id="btn1" name="btn1"><i class="fas fa-search"></i></button>
    </div>
  </div>
</form>

</body>
</html>
