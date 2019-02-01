<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
<!-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/additional-methods.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/join2-1.js"></script> --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/global.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/join.css">


<script type="text/javascript">
var dWin;
var aWin;
var gWin;

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (600 / 2);
$('#gBtn').click(function(){
  gWin = window.open('<%= request.getContextPath() %>/join/G/cho','searchGenre','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (730 / 2);
    var popupY= (window.screen.height / 2) - (600 / 2);
$('#dBtn').click(function(){
  dWin = window.open('<%= request.getContextPath() %>/join/D/cho','searchDirector','width=700,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (600 / 2);
$('#aBtn').click(function(){
  aWin = window.open('<%= request.getContextPath() %>/join/A/cho','searchActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});


</script>

<title>Join</title>
</head>
<body onload="document.getElementById('defaultOpen').click();">

  <div class="Center-Container">
    <div class="Absolute-Center">
      <form action="" method="POST">
      <div class="tabs">
        <div class="active" onclick="openPage('tab1')" id="defaultOpen">
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
                  <label for="pwd">Password:</label>
                </p>
                <input type="password" name="pw" id="pw" class="form-control input-text">
              </div>

              <div class="form-group">
                <p class="input-p">
                  <label for="pwd">Check Password:</label>
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
            <button type="button" class="btn btn-primary btn-next" onclick="openPage('tab2')">다음</button>
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
                <input type="text" class="form-control form-control-lg input-text col82"
                 id="u_favorite_actor_name" placeholder="Press the button for search actors">
                <button type="button" class="btn btn-primary btn-search" id="aBtn"><i class="fas fa-search"></i></button>
              </div>
              <input type="hidden" name="u_favorite_actor_id" id="u_favorite_actor_id">
              <input type="hidden" id="update1" onchange="test1()">
              <!-- Director -->
              <div class="form-group">
                <p class="input-p">
                  <label for="selectDirector">Director:</label>
                </p>
                <input type="text" class="form-control form-control-lg input-text col82"
                 id="u_favorite_director_name" placeholder="Press the button for search directors">
                <button type="button" class="btn btn-primary btn-search" id="dBtn"><i class="fas fa-search"></i></button>
              </div>
              <input type="hidden" name="u_favorite_director_id" id="u_favorite_director_id">
              <input type="hidden" id="update2" onchange="test2()">
              <!-- Genre -->
              <div class="form-group">
                <p class="input-p">
                  <label for="selectGenre">Genre:</label>
                </p>
                <input type="text" class="form-control form-control-lg input-text col82"
                 id="u_favorite_genre_name" placeholder="Press the button for search genre">
                <button type="button" class="btn btn-primary btn-search" id="gBtn"><i class="fas fa-search"></i></button>
              </div>
              <input type="hidden" name="u_favorite_genre_id" id="u_favorite_genre_id">
              <input type="hidden" id="update3" onchange="test3()">

            </div>
          </div>
          <!-- end of tab2 main div -->
          <div>
            <button type="button" class="btn btn-primary btn-before" onclick="openPage('tab1')">이전</button>
            <button type="button" class="btn btn-primary btn-next" onclick="openPage('tab3')">다음</button>
          </div>
        </div>
        <!-- end of tab2 -->


        <div id="tab3" class="tabcontent">
          <div class="mainDiv">
            <h2 class="mainTitle">Information</h2>
            <p class="subTitle">Let me know you - Choice your preference</p>

            <div class="container-fluid" style="margin: 0; margin-botton: 5px">

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
            <button type="button" class="btn btn-primary btn-before" onclick="openPage('tab2')">이전</button>
            <button type="button" class="btn btn-primary btn-next" onclick="openPage('tab4')">다음</button>
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
              <a href="<%=request.getContextPath()%>/" class="done">Done</a>
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

var form = document.getElementsByTagName('form');
//form[0].onsubmit = checkValid;
function checkValid(){
  if(!checkValidId()){
    alert('아이디는 5~12자로 숫자와 영문자로 이루어져있습니다.');
    return false;
  }
    if(!checkValidPw()){
      alert('비밀번호는 8~20자이며, 숫자와 영문자가 꼭 들어가야합니다.');
      return false;
    }
    if(!checkValidPwConfirm()){
        alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
        return false;
    }
    if(!checkValidEmail()){
        alert('이메일을 입력해주세요');
        return false;
    }
    return true;
}
function checkValidEmail(){
  var email = document.getElementsByName('email')[0].value;
  if(email == ""){
    return false;
  }
  return true;
}
function checkValidPw(){
    var regexPw = /^(?=\w{8,20}$)\w*(\d[A-z]|[A-z]\d)\w*$/;
    //pw에 비밀번호 입력창에 있는 문자열을 저장
    var pw = document.getElementsByName('pw')[0].value;
    if(!checkRegex(regexPw, pw)){
       return false;
    }
    return true;
}
function checkValidId(){
    var regexId = /^\w{5,12}$/;
    var id = document.getElementsByName('id')[0].value;
    if(!checkRegex(regexId, id)){
       return false;
    }
    return true;
}
function checkValidPwConfirm(){
  var pw = document.getElementsByName('pw')[0].value;
  var pwConfirm = document.getElementsByName('pwConfirm')[0].value;
  if(pw != pwConfirm){
    return false;
  }
  return true;
}
function checkRegex(regexPw, str){
  if(!regexPw.test(str)){
       return false;
  }
  return true;
}
   $("form").validate({
    rules: {
        id: {
            required : true,
            minlength : 5,
            maxlength : 12
        },
        pw: {
            required : true,
            minlength : 8,
            maxlength : 20,
            regex: /^\w*(\d[A-z]|[A-z]\d)\w*$/
        },
        pwConfirm: {
            required : true,
            equalTo : pw
        },
        email: {
            required : true,
            email : true
        }
    },
    //규칙체크 실패시 출력될 메시지
    messages : {
        id: {
            required : "필수로입력하세요",
            minlength : "최소 {0}글자이상이어야 합니다",
            maxlength : "최대 {0}글자이하이어야 합니다"
        },
        pw: {
            required : "필수로입력하세요",
            minlength : "최소 {0}글자이상이어야 합니다",
            maxlength : "최대 {0}글자이하이어야 합니다",
            regex : "영문자, 숫자로 이루어져있으며 최소 하나이상 포함"
        },
        pwConfirm: {
            required : "필수로입력하세요",
            equalTo : "비밀번호가 일치하지 않습니다."
        },
        email: {
            required : "필수로입력하세요",
            email : "메일규칙에 어긋납니다"
        },
    }
});
$.validator.addMethod(
      "regex",
      function(value, element, regexp) {
          var re = new RegExp(regexp);
          return this.optional(element) || re.test(value);
      },
      "Please check your input."
  );


$("#dup").on("click",function(){
  if(!checkValidId()){
    alert('아이디는 5~12글자로 숫자와 영문으로 이루어져 있습니다.');
    return; //그리고 밑에 있는 것이 실행 안되게 그냥 되돌려준다.
  }
    var id = $("#id").val();//id가 id인 input 태그에 입력된 id 가져오기
    $.ajax({
      async:true,
      type:'POST',
      data:id,
      url:"dup",
      dataType:"json",
      contentType:"application/json; charset=UTF-8",
      success : function(data){
        console.log(data.dup);
        if(data.dup){
          alert("이미 사용중인 아이디입니다.");
        }else{
          alert("사용 가능한 아이디입니다.");
        }
      }
    });
  });
</script>
</body>
</html>
