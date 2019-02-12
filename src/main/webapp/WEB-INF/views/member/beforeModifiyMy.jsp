<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/menu.css">

<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<style>
* {
  box-sizing: border-box
}

.container {
  width: 100%;
}
input[type="text"], input[type="password"], button {
  font: 17px "Lato", Arial, sans-serif;
  color: #333;
  width: 100%;
  height: 33px;
  margin-bottom: 5px;
  margin-top: 20px;
  letter-spacing: 1px;
  background: transparent;
  border: solid 1px grey;
  border-radius:12px;
  background-color: transparent;
}
.Center-Container {
  position: relative;
  height: 650px;
  width: 100%;
}

.Absolute-Center {
  width: 50%;
  height: 45%;
  overflow: auto;
  margin: auto;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  padding: 10px;
}
.btn {
  border: solid grey 1px;
  border-radius:12px;
  padding: 12px 16px;
  background-color: transparent;
  cursor: pointer;
  color: black;
  line-height: 0;
}
</style>

<title>my</title>
</head>
<body>
  <script type="text/javascript">
			
		</script>
  <div class="Center-Container">
    <div class="Absolute-Center">
      <h2>${user.nickname}님의MY 설정 변경</h2>
        <form method="POST">
          <div class="form-group input-group-lg">
            <input type="text" name="id" placeholder="     id" class="form-control">
          </div>
          <div class="form-group input-group-lg">
            <input type="password" name="pw" placeholder="     password" class="form-control">
          </div>
          <div>
            <button type="submit" class="btn btn-primary">본인 확인</button>
          </div>

        </form>
        <input type="hidden" value="${checkOk}" id="checkOk" />
    </div>
  </div>


  <script>
  var checkOk = document.getElementById('checkOk');
  if(${checkOk} == 0){
      alert('아이디 또는 패스워드를 잘 못 입력했습니다.');
  }
		</script>
</body>
</html>