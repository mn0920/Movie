<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
  href="<%=request.getContextPath()%>/resources/css/login.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
  src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<link
  href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
  rel="stylesheet" id="bootstrap-css">
<script
  src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
.size {
  width: 430px;
  height: 260px;
  text-align: center;
}

.top {
  display: block;
  height: 70px;
}

.middle {
  display: block;
  height: 140px;
}

.content {
  vertical-align: middle;
  text-align: center;
  height: 72%;
  width: 70%;
  margin: auto;
}
.size {
  overflow: auto;
  position: relative;
}

.size:before {
  content: "";
  position: fixed;
  left: 0;
  right: 0;
  z-index: -1;

  display: block;
  background-image: url('/movie/resources/images/JoinUs.jpg');
  background-size:cover;
  width: 100%;
  height: 100%;

  -webkit-filter: blur(2px);
  -moz-filter: blur(2px);
  -o-filter: blur(2px);
  -ms-filter: blur(2px);
  filter: blur(2px);
}

.botton {
  display: block;
  height: 40px;
}

a {
  text-decoration: none;
  color: black;
}

.conti {
  margin: 15px 15px;
  float: right;
}

.join {
  width: 80%;
  height: 80%;
}

/* .size {
  background-image: url('/movie/resources/images/JoinUs.jpg');
} */
</style>
<script>
$(document).ready(function(){
  $(".conti").click(function(){
    opener.document.getElementById('update').value = "<%=request.getContextPath()%>/m/main"
    opener.$('#update').trigger('change');
  }); 
  $(".join").click(function(){
	    opener.document.getElementById('update').value = "<%=request.getContextPath()%>
	/join"
											opener.$('#update').trigger(
													'change');
										});
					});
</script>
<title>JoinUs!</title>
</head>
<body>

  <div class="size">
    <div class="top">
      <button type="button" class="btn btn-light btn-group-lg conti">
        진행</button>
    </div>
    <div class="middle">
      <div class="content">
        회원가입을 하시면 추천영화를 받을 수 있어요!<br>추천영화를 받고싶으시다면 하단에 있는<br>
        <a href="<%=request.getContextPath()%>/join">[회원가입]</a>을
        눌러주세요.<br> 그냥 사용하고 싶으시다면 <br> 오른쪽 상단의 진행을 눌러주세요.
      </div>
    </div>
    <div class="botton">
      <button type="button" class="btn btn-light btn-group-lg join">회원가입</button>
    </div>
  </div>

</body>
</html>