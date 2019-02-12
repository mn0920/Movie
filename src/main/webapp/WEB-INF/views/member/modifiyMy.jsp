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

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/additional-methods.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/modifiyMy.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/join.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">

<style>
#navbar .topnav #my {
  color: black;
  font-weight: bold;
}

* {
  box-sizing: border-box
}

body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
  background: rgb(241, 241, 241);
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  border: 0;
  margin: 0;
  padding: 0;
}


input[type="text"] {
  font: 17px "Lato", Arial, sans-serif;
  color: #333;
  width: 80%;
  height: 33px;
  margin-bottom: 5px;
  letter-spacing: 1px;
  background: transparent;
  border: 0px;
}

.Center-Container {
  position: relative;
  height: 1300px;
  width: 100%;
}

.Absolute-Center {
  width: 80%;
  height: 100%;
  min-height: 490px;
  overflow: auto;
  margin: auto;
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
  /* border: solid black; */
  padding: 10px;
}

.mainDiv {
  height: 300px;
  display: block;
  padding: 0px;
}

.mainDiv1 {
  height: 150px;
  display: block;
  padding: 0px;
}

.mainDiv2 {
  height: 450px;
  width:840px;
  display: block;
  padding: 0px;
  margin: auto;
}

.mainTitle {
  margin-top: 30px;
  text-align: center;
}

.subTitle {
  margin-top: 5px;
  text-align: center;
}

.btn {
  border: solid grey 1px;
  border-radius:12px;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
  color: black;
  margin-left: 10px;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}

.btn-search {
  height: 30px;
  margin: 0;
  float: right;
  font-size: 14px;
  text-align: center;
  line-height: 29px;
  padding: 0 10px;
  width: 10%;
}

.btn-refresh {
  height: 30px;
  margin: 0;
  margin-top: 10px;
  left: calc(50% - 14px);
  font-size: 14px;
  position:relative;
  text-align: center;
  line-height: 29px;
  padding: 0px 10px;
}

.input-text {
  margin: auto;
  display: inline-block;
}

.form-group {
  margin-bottom: 5px;
}

.tab1>.form-group {
  margin-bottom: 5px;
  padding-left: 30px;
}
.input-p {
  width: 80px;
  display: inline-block;
}

input[type="text"], input[type="password"], input[type="email"], select
  {
  font: 17px "Lato", Arial, sans-serif;
  color: #333;
  width: 80%;
  height: 33px;
  margin-bottom: 5px;
  letter-spacing: 1px;
  background: transparent;
}
#u_preference{
  color: rgb(241, 241, 241);
  letter-spacing: 0px;
  width: 0px;
  height: 0px;
}

input[type=text].col82 {
  width: 78%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

.container-fluid{
margin-top: 20px;
}

.project {
  width: 210px;
  height: 300px;
  background-image: url("/movie/resources/images/director.jpg");
  background-size: cover;
  background-position: center;
  padding: 0 !important;
  float: left;
}

.project-2 {
  background-image: url("/movie/resources/images/actor.jpg");
}

.project-3 {
  background-image: url("/movie/resources/images/genre.jpg");
}

.project-4 {
  background-image: url("/movie/resources/images/apprisal.jpg");
}

.project-hover {
  width: 100%;
  height: 100%;
  color: #fff;
  opacity: 0;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
  background-color: rgba(81, 81, 81, 0.7);
  padding: 40% 30px !important;
  cursor: pointer;
}

.project-hover hr {
  height: 30px;
  width: 0;
  -webkit-transition: all 0.5s ease;
  -moz-transition: all 0.5s ease;
  -o-transition: all 0.5s ease;
  transition: all 0.5s ease;
  background-color: rgba(255, 255, 255, 1);
  border: 0;
} 
button > a{
color:black;
text-decoration:none;
}
</style>

<title>my</title>
</head>
<body>
<div class="Center-Container">
  <div class="Absolute-Center">
  
  <div  style="margin:40px;"><h1>${user.nickname}님의MY</h1></div>
    <form action="" name="myform" method="POST">
      <div class="mainDiv1">
        <h2 class="mainTitle">Information</h2>
        <p class="subTitle">Let me know you - Select your favorites</p>
        <div class="form-group" style="margin-top:20px">
          <p class="input-p">
            <label for="nickname" style="margin: auto">Nick name:</label>
          </p>
          <input type="text" name="nickname" id="nickname" class="form-control form-control-lg input-text col82" value="${user.nickname}">
          <button type="button" class="btn-search" id="dup"> <i class="fas fa-search"></i> </button>
        </div>
      </div>
      
      <div class="mainDiv">
        <h2 class="mainTitle">Information</h2>
        <p class="subTitle">Let me know you - Select your favorites</p>
        <!-- Actor -->
        <div style="margin-top: 50px;">
          <div class="form-group">
            <p class="input-p">
              <label for="selectMovie">Actor:</label>
            </p>
            <input type="text" class="form-control form-control-lg input-text col82" name="u_favorite_actor_name" id="u_favorite_actor_name"
              value="${user.u_favorite_actor_name}" readonly>
            <button type="button" class="btn-search" id="aBtn">
              <i class="fas fa-search"></i>
            </button>
          </div>
          <input type="hidden" name="u_favorite_actor_id" id="u_favorite_actor_id" placeholder="${user.u_favorite_actor_id}">
          <input type="hidden" id="update1" onchange="test1()">
          <!-- Director -->
          <div class="form-group">
            <p class="input-p">
              <label for="selectDirector">Director:</label>
            </p>
            <input type="text" class="form-control form-control-lg input-text col82" name="u_favorite_director_name"
              id="u_favorite_director_name" value="${user.u_favorite_director_name}" readonly>
            <button type="button" class="btn-search" id="dBtn">
              <i class="fas fa-search"></i>
            </button>
          </div>
          <input type="hidden" name="u_favorite_director_id" id="u_favorite_director_id" placeholder="${user.u_favorite_director_id}">
          <input type="hidden" id="update2" onchange="test2()">
          <!-- Genre -->
          <div class="form-group">
            <p class="input-p">
              <label for="selectGenre">Genre:</label>
            </p>
            <input type="text" class="form-control form-control-lg input-text col82" name="u_favorite_genre_name"
              id="u_favorite_genre_name" value="${user.u_favorite_genre_name}" readonly>
            <button type="button" class="btn-search" id="gBtn">
              <i class="fas fa-search"></i>
            </button>
          </div>
          <input type="hidden" name="u_favorite_genre_id" id="u_favorite_genre_id" placeholder="${user.u_favorite_genre_id}">
          <input type="hidden" id="update3" onchange="test3()">
        </div>
      </div>
      <div class="mainDiv2">
        <h2 class="mainTitle">영화 선호도 조사</h2>
        <p class="subTitle">영화를 선정할 때 고려하는 순서대로 선택주세요(전부)</p>

        <div class="container-fluid">

          <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project wow animated animated4 fadeInLeft" id="Dp">
            <div class="project-hover" id="D">
              <h2>Director</h2>

              <hr />
              <p>If you choice this one first then u can get all
                of the director movies</p>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-2 wow animated animated3 fadeInLeft" id="Ap">
            <div class="project-hover" id="A">
              <h2>Actor</h2>
              <hr />
              <p>If you choice this one first then u can get all of the actor movies</p>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-3 wow animated animated2 fadeInLeft" id="Gp">
            <div class="project-hover" id="G">
              <h2>Genre</h2>
              <hr />
              <p>If you choice this one first then u can get all of the genre movies</p>
            </div>
          </div>
          <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-4 wow animated fadeInLeft" id="Cp">
            <div class="project-hover" id="C">
              <h2>Score</h2>
              <hr />
              <p>If you choice this one first then u can get high score movies. score: appraisal+comments</p>
            </div>
          </div>
          <div class="clearfix">
            <input type="text" id="u_preference" name="u_preference" value="${user.u_preference}" onfocus="abled()">
          </div>
        </div>
        <div class="btns">
          <button type="button" class="btn btn-refresh"><i class="fas fa-sync-alt"></i></button>
        </div>
      </div>
      <div>
      <button type="submit" class="btn float-right">수정 완료</button>
      <a href="<%=request.getContextPath()%>/m/my"><button type="button" class="btn float-right">취소</button></a>
      </div>
    </form>
  <input type="hidden" value="${changeOk}" id="changeOk" />
  </div>
</div>

  <script>
	    var changeOk = document.getElementById('changeOk');
	    if(${changeOk} == 0){
	        alert('아이디 또는 패스워드를 잘 못 입력했습니다.');
	    }
  

  function test1(){
      setTimeout(function () {
        aWin.close();
      }, 1000);
      console.log(aWin);
    };

  function test2(){
    setTimeout(function () {
      dWin.close();
    }, 500);
    console.log(dWin);
  };

   function test3(){
    setTimeout(function () {
      gWin.close();
    }, 1100);
    console.log(gWin);
  };

			
		</script>
</body>
</html>