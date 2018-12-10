<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  
  <script>
function printClock() {
    
    var clock = document.getElementById("clock");            // 출력할 장소 선택
    var currentDate = new Date();                                     // 현재시간
    var calendar = currentDate.getFullYear() + "-" + (currentDate.getMonth()+1) + "-" + currentDate.getDate() // 현재 날짜
    var amPm = 'AM'; // 초기값 AM
    var currentHours = addZeros(currentDate.getHours(),2); 
    var currentMinute = addZeros(currentDate.getMinutes() ,2);
    var currentSeconds =  addZeros(currentDate.getSeconds(),2);
    
    if(currentHours >= 12){ // 시간이 12보다 클 때 PM으로 세팅, 12를 빼줌
        amPm = 'PM';
        currentHours = addZeros(currentHours - 12,2);
    }

    clock.innerHTML = currentHours+":"+currentMinute+":"+currentSeconds +" <span style='font-size:10px;'>"+ amPm+"</span>"; //날짜를 출력해 줌
    
    setTimeout("printClock()",1000);         // 1초마다 printClock() 함수 호출
}

function addZeros(num, digit) { // 자릿수 맞춰주기
      var zero = '';
      num = num.toString();
      if (num.length < digit) {
        for (i = 0; i < digit - num.length; i++) {
          zero += '0';
        }
      }
      return zero + num;
}
</script>
    <script type="text/javascript">
    var loginOk = document.getElementById('loginOk');
    if(loginOk.value == 0){
        alert('아이디 또는 패스워드를 잘 못 입력했습니다.');
    }
    if(${join} == 1){
        alert('회원가입에 성공했습니다.');
    }
    </script>
  
</head>
<body>

<div style="#" id="test">


<!-- clock -->
<body onload="printClock()">
<span style="border:solid 0px; width:200px; height:100px; line-height:100px; color:E6E6E6;font-size:30px; text-align:center; margin-left:30px" id="clock"></span>
  <button type="button" class="btn btn-light float-right btn-group-lg" style="margin: 35px 50px; text-color:white;">
      <a href="<%= request.getContextPath() %>/join">회원가입</a>
  </button>
</body>

<!-- Logo -->
<div style="width:400px; height:300px; margin:auto;">
<div style="width:200px; height:100px; line-height:250px; color:E6E6E6; font-size:100px; text-align:center; margin:auto;">Logo</div>
</div>

<div class="container" style="width:560px;">
    <form method="POST">
        <div class="form-group input-group-lg">
            <input type="text" name="id" placeholder="id" class="form-control">
        </div>
        <div class="form-group input-group-lg">
            <input type="password" name="pw" placeholder="password"  class="form-control">
        </div>
        
        
        <div class="btn-group btn-group-lg block" style="width:530px;">
          <button type="button" class="btn btn-primary help-tip" style="border:solid 1px white; width:265px; background-color:transparent;">
             <p>회원가입을 하시면 추천영화를 받을 수 있어요!<br>추천영화를 받고싶으시다면 오른쪽 상단에 있는<br>
             <a href="<%= request.getContextPath() %>/join">[회원가입]</a>을 눌러주세요.<br>그냥 이용하시겠다면 버튼을 다시 눌러주세요</p>
            <a href="#" style="color:white;">
            비회원 로그인
            </a>
          </button>
          <button type="submit" class="btn btn-primary" style="border:solid 1px white; width:265px; background-color:transparent;">
            로그인
          </button>
        </div>

        </form>
    <input type="hidden" value="${loginOk}" id="loginOk" />
</div><!-- end of container -->

</div> <!-- end of background animation -->
</body>
</html>
