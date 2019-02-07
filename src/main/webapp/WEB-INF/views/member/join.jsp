<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/additional-methods.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/join2-1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/join.css">


<title>Join</title>
</head>
<body onload="openPage('tab1');">

  <div class="Center-Container">
    <div class="Absolute-Center">
      <form action="" method="POST">
      <div class="tabs">
        <div class="active">
        <div id="tab1" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">Information</h2>
            <p class="subTitle">Set your information</p>

            <div style="margin-top: 30px;">
              <div class="form-group">
                <p class="input-p">
                  <label for="id" style="margin: auto">ID:</label>
                </p>
                <input type="text" name="id" id="id" class="form-control input-text">
              </div>

              <div class="form-group">
                <p class="input-p">
                  <label for="nickname" style="margin: auto">Nick name:</label>
                </p>
                <input type="text" name="nickname" id="nickname" class="form-control input-text">
              </div>

              <div class="form-group">
                <p class="input-p">
                  <label for="pw">Password:</label>
                </p>
                <input type="password" name="pw" id="pw" class="form-control input-text">
              </div>

              <div class="form-group">
                <p class="input-p">
                  <label for="pwConfirm">Check Password:</label>
                </p>
                <input type="password" name="pwConfirm" id="pwConfirm" class="form-control input-text">
              </div>

              <div class="form-group">
                <p class="input-p">
                  <label for="email" style="margin: auto">E-mail:</label>
                </p>
                <input type="text" name="email" id="email" class="form-control input-text">
              </div>

              <div class="form-group">
                <p class="input-p">
                  <label for="age" style="margin: auto">Age:</label>
                </p>
                <input type="text" name="age" id="age" class="form-control input-text" placeholder="ex)19870101">
              </div>


            </div>
          </div>
          <div>
            <input type="hidden" id="hbtn1" value="0">
            <button type="submit" class="btn btn-primary btn-next" id="tab1btn" >다음</button>
          </div>
        </div>
        </div>

        <!-- end of tab1 -->

        <div id="tab2" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">Information</h2>
            <p class="subTitle">Let me know you - Select your favorites</p>

            <!-- Actor -->
            <div style="margin-top: 50px;">
              <div class="form-group">
                <p class="input-p">
                  <label for="selectMovie">Actor:</label>
                </p>
                <input type="text" class="form-control form-control-lg input-text col82" name="u_favorite_actor_name"
                 id="u_favorite_actor_name" placeholder="Press the button for search actors" readonly>
                <button type="button" class="btn btn-primary btn-search" id="aBtn"><i class="fas fa-search"></i></button>
              </div>
              <input type="hidden" name="u_favorite_actor_id" id="u_favorite_actor_id">
              <input type="hidden" id="update1" onchange="test1()">
              <!-- Director -->
              <div class="form-group">
                <p class="input-p">
                  <label for="selectDirector">Director:</label>
                </p>
                <input type="text" class="form-control form-control-lg input-text col82" name="u_favorite_director_name"
                 id="u_favorite_director_name" placeholder="Press the button for search directors" readonly>
                <button type="button" class="btn btn-primary btn-search" id="dBtn"><i class="fas fa-search"></i></button>
              </div>
              <input type="hidden" name="u_favorite_director_id" id="u_favorite_director_id">
              <input type="hidden" id="update2" onchange="test2()">
              <!-- Genre -->
              <div class="form-group">
                <p class="input-p">
                  <label for="selectGenre">Genre:</label>
                </p>
                <input type="text" class="form-control form-control-lg input-text col82" name="u_favorite_genre_name"
                 id="u_favorite_genre_name" placeholder="Press the button for search genre" readonly>
                <button type="button" class="btn btn-primary btn-search" id="gBtn"><i class="fas fa-search"></i></button>
              </div>
              <input type="hidden" name="u_favorite_genre_id" id="u_favorite_genre_id">
              <input type="hidden" id="update3" onchange="test3()">

            </div>
          </div>
          <!-- end of tab2 main div -->
          <div>
            <button type="button" class="btn btn-primary btn-before" id="hbtn2" onclick="openPage('tab1')">이전</button>
            <button type="button" class="btn btn-primary btn-next" id="gbtn2" onclick="openPage('tab3')">다음</button>
          </div>
        </div>
        <!-- end of tab2 -->


        <div id="tab3" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">영화 선호도 조사</h2>
            <p class="subTitle">영화를 선정할 때 고려하는 순서대로 선택주세요(전부)</p>

            <div class="container-fluid" style="margin: 0; margin-botton: 5px">

              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project wow animated animated4 fadeInLeft">
                <div class="project-hover" id="D">
                  <h2>Director</h2>

                  <hr />
                  <p>If you choice this one first then u can get all of the director movies</p>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-2 wow animated animated3 fadeInLeft">
                <div class="project-hover" id="A">
                  <h2>Actor</h2>
                  <hr />
                  <p>If you choice this one first then u can get all of the actor movies</p>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-3 wow animated animated2 fadeInLeft">
                <div class="project-hover" id="G">
                  <h2>Genre</h2>
                  <hr />
                  <p>If you choice this one first then u can get all of the genre movies</p>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-4 wow animated fadeInLeft">
                <div class="project-hover" id="C">
                  <h2>Score</h2>
                  <hr />
                  <p>If you choice this one first then u can get high score movies. score: appraisal+comments</p>
                </div>
              </div>
              <div class="clearfix"><input type="hidden" id="u_preference" name="u_preference" onfocus="abled()"></div>
            </div>

          </div>
          <div class="btns">
            <button type="button" class="btn btn-primary btn-before" onclick="openPage('tab2')">이전</button>
            <button type="button" class="btn btn-primary btn-refresh"><i class="fas fa-sync-alt"></i></button>
            <button type="button" class="btn btn-primary btn-next" id="gbtn3" onclick="openPage('tab4')">다음</button>
          </div>
        </div>

        <div id="tab4" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">WELCOME!</h2>
            <p class="subTitle"></p>
            <p>what I gonna put in here?</p>
          </div>
          <div>
            <button type="button" class="btn btn-primary btn-before" onclick="openPage('tab3')">이전</button>
            <button type="submit" class="btn btn-primary btn-next">
             <%--  <a href="<%=request.getContextPath()%>/" class="done"> --%>Done<!-- </a> -->
            </button>
          </div>
        </div>
        
      </div>
      </form>

    </div>
  </div>
  <script type="text/javascript">

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


  if(${join} == 0){ 
    alert('회원가입에 실패하였습니다.'); 
  } 
</script>
</body>
</html>
