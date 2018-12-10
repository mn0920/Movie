<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/additional-methods.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/join2-1.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/join2-1.css">


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">


<title>Join22</title>
</head>
<body onload="document.getElementById('defaultOpen').click();">

  <div class="Center-Container" style="width: 100%; height: 100%;">
    <div class="Absolute-Center">
     <form action="" method="POST">
      <div class="tabs" style="height: 93%; margin: 0; padding: 0;'">
        <p class="active" onclick="openPage('tab1')" id="defaultOpen">
        
          <div id="tab1" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">Information</h2>
              <p class="subTitle">Set your information</p>
  
              <div style="margin-top: 30px;">
                <div class="form-group" style="padding-left: 30px">
                  <p style="width: 80px; display: inline-block;">
                    <label for="id" style="margin: auto">Name:</label>
                  </p>
                  <input type="text" id="id" name="id" class="form-control input-text">
                </div>
                
                <div class="form-group" style="padding-left: 30px">
                  <p style="width: 80px; display: inline-block;">
                    <label for="nickname" style="margin: auto">Nick name:</label>
                  </p>
                  <input type="text" id="nickname" name="nickname" class="form-control input-text">
                </div>
                
                <div class="form-group" style="padding-left: 30px">
                  <p style="width: 80px; display: inline-block;">
                    <label for="pwd">Password:</label>
                  </p>
                  <input type="password" id="pw" name="pw" class="form-control input-text">
                </div>
                
                <div class="form-group" style="padding-left: 30px">
                  <p style="width: 80px; display: inline-block;">
                    <label for="email" style="margin: auto">E-mail:</label>
                  </p>
                  <input type="email" id="email" name="email" class="form-control input-text">
                </div>
  
<!--                 <div class="form-group" style="padding-left: 30px">
                  <div class="input-form" style="width: 80px; display: inline-block;">
                    <label>Gender</label>
                  </div>
                  <div style="display: inline-block;">
                    <p style="width: 80px; display: inline-block;">
                      <label for="male">Male</label>
                    </p>
                    <input type="radio" name="gender" id="male" checked value="male" class="input-text">
  
                    <div style="width: 30px; display: inline-block;"></div>
  
                    <p style="width: 100px; display: inline-block;">
                      <label for="female">Female</label>
                    </p>
                    <input type="radio" name="gender" id="female" value="female"  class="input-text">
                  </div> -->

                <div class="form-group" style="padding-left: 30px">
                  <p style="width: 80px; display: inline-block;">
                    <label for="age" style="margin: auto">Age:</label>
                  </p>
                  <input type="text" id="age" name="age" class="form-control input-text">
                </div>


              </div>
              </div>
            </div>
            <div>
              <button class="btn btn-primary btn-next" onclick="openPage('tab2')">Next</button>
            </div>
        </p>
          </div>

        <!-- end of tab1 -->

        <div id="tab2" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">Information</h2>
            <p class="subTitle">Let me know you - Select your favorites</p>

            <!-- Actor -->
            <div style="margin-top: 50px;">
              <div class="form-group" style="padding-left: 30px">
                <p style="width: 80px; display: inline-block;">
                  <label for="selectMovie">Actor:</label>
                </p>
                <input type="text" class="form-control form-control-lg input-text" id="selectActor" placeholder="Search for actors">
              </div>
              <!-- Director -->
              <div class="form-group" style="padding-left: 30px">
                <p style="width: 80px; display: inline-block;">
                  <label for="selectDirector">Director:</label>
                </p>
                <input type="text" class="form-control form-control-lg input-text" id="selectDirector" placeholder="Search for directors">
              </div>
              <!-- Genre -->
              <div class="form-group" style="padding-left: 30px">
                <p style="width: 80px; display: inline-block;">
                  <label for="selectGenre">Genre:</label>
                </p> 
                <!-- start of selectGenre checkboxes -->

                <button><label><input type="checkbox" value="thrill" name="genre">스릴</label></button>
                <button><label><input type="checkbox" value="horror" name="genre">호러</label></button>

<!--                 <div class="checkbox-container">

                  <input type="checkbox" id="is-subscription"><label for="is-subscription">구독신청</label>

                </div> -->

                <!-- end of selectGenre checkboxes -->
              </div>

            </div>
          </div>
            <!-- end of tab2 main div -->
            <div>
              <button class="btn btn-primary btn-next" onclick="openPage('tab3')">Next</button>
            </div>
        </div>
        <!-- end of tab2 -->





          <div id="tab3" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">Information</h2>
            <p class="subTitle">Let me know you - Choice your preference</p>

            <div class="container-fluid" style="margin:0; margin-botton:5px">

              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project wow animated animated4 fadeInLeft">
                <div class="project-hover">
                  <h2>Director</h2>

                  <hr />
                  <p>If you choice this one first then u can get all of the director movies</p>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-2 wow animated animated3 fadeInLeft">
                <div class="project-hover">
                  <h2>Actor</h2>
                  <hr />
                  <p>If you choice this one first then u can get all of the actor movies</p>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-3 wow animated animated2 fadeInLeft">
                <div class="project-hover">
                  <h2>Genre</h2>
                  <hr />
                  <p>If you choice this one first then u can get all of the genre movies</p>
                </div>
              </div>
              <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 project project-4 wow animated fadeInLeft">
                <div class="project-hover">
                  <h2>Score</h2>
                  <hr />
                  <p>If you choice this one first then u can get high score movies. score: appraisal+comments</p>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>

          </div>
          <div>
            <button class="btn btn-primary btn-next" onclick="openPage('tab4')">Next</button>
          </div>
        </div>

          <div id="tab4" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">WELCOME!</h2>
            <p class="subTitle"></p>
            <p>what I gonna put in here?</p>
          </div>
          <div>
            <a href="<%= request.getContextPath() %>/"><button type="submit" class="btn btn-primary btn-next">Done</button></a>
          </div>
        </div>
        </form>

      </div>
    </div>
  </div>
<script type="text/javascript">
if(${signup} == 0){
  alert('회원가입에 실패하였습니다.');
}
</script>
</body>
</html>
