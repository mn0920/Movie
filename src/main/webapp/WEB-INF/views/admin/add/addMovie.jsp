<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session = "true" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nav.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminBasic.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
.fileDrop{
width: 23%;
height: 259px;
border: 1px dotted blue;
margin-left:10px;
}
img{
width: 100%;
height: 100%;
}
small {
margin-left: 3px;
font-weight: bold;
color: grey;
}
</style>

<title>movieManagement</title>
</head>
<body>
<script type="text/javascript">
var dWin;
var aWin;
var gWin;
var win;

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#mBtn').click(function(){
  win = window.open('<%= request.getContextPath() %>/admin/MM/seaM','searchMovie','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#gBtn').click(function(){
  gWin = window.open('<%= request.getContextPath() %>/admin/MM/seaG','searchGenre','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#dBtn').click(function(){
  dWin = window.open('<%= request.getContextPath() %>/admin/MM/seaD','searchDirector','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#aBtn').click(function(){
  aWin = window.open('<%= request.getContextPath() %>/admin/MM/seaA','searchActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

<%-- $(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#aBtn').click(function(){
  aWin = window.open('<%= request.getContextPath() %>/admin/lol','searchActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
}); --%>
</script>

 <div class="all">
 <jsp:include page="../adminTopMenu.jsp" />

<div class="row">
<jsp:include page="../adminSideMenu.jsp" />
 
  
  <div class="main">
    <div class="container">
        <div class="row show">
          <div class="col-25">
            <label for="title">Title</label>
          </div>
          <div class="col-75">
            <input type="text" id="title" name="title" class="col82" placeholder="영화의 제목을 적어주세요."
             <%-- value="<%=request.getSession().getAttribute("title")%>" --%> readonly>
            <button type="button" id="mBtn"><i class="fas fa-search"></i></button>
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="genre_list">genre</label>
          </div>
          <div class="col-75">
            <input type="text" id="m_genre_list" class="col82" placeholder="영화의 장르를 적어주세요." readonly>
            <button type="button" id="gBtn"><i class="fas fa-search"></i></button>
            <input type="hidden" id="genre_list" class="col82" value="${movie.id}" >
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="director_list">director</label>
          </div>
          <div class="col-75">
            <input type="text" id="m_director_list" class="col82" placeholder="영화 감독을 적어주세요" readonly>
            <button type="button" id="dBtn"><i class="fas fa-search"></i></button>
            <input type="hidden" id="director_list" class="col82" value="${movie.id}" >
          </div>
        </div>
        <div class="row">
          <div class="col-25">
            <label for="m_actor_list">actor</label>
          </div>
          <div class="col-75">
            <input type="text" id="m_actor_list" class="col82" placeholder="출연한 배우들의 이름을 적어주세요" readonly>
            <button type="button" id="aBtn"><i class="fas fa-search"></i></button>
            <input type="hidden" id="actor_list" class="col82" value="${movie.id}" >
          </div>
        </div>
        <form action="<%= request.getContextPath() %>/admin/movie/addM" method="POST">
          <div class="row">
            <div class="col-25">
              <label for="open_date">open date</label>
            </div>
            <div class="col-25">
              <input type="text" id="open_date" name="open_date" class="col82" >
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="rate">Rate(관람가능 연령)</label>
            </div>
            <div class="col-25">
              <select id="rate" name="rate">
                <option value="">연령선택</option>
                <option value="G">전체관람</option>
                <option value="PG12">12세 이상</option>
                <option value="PG15">15세이상</option>
                <option value="R">청소년관람불가</option>
                <option value="NCR">제한상영관람</option>
              </select>
            </div>
            <div class="col-25">
              <label for="grade" style="float: right;">grade(관객수)</label>
            </div>
            <div class="col-25">
              <input type="text" id="grade" name="grade" placeholder="전체 관객 수를 적어주세요">
            </div>
          </div>
            <!-- <div class="row"> -->
          <div class="row">
            <div class="col-25">
              <label for="running_time">running time</label>
            </div>
            <div class="col-25">
              <input type="text" id="running_time" name="running_time" placeholder="상영 시간을 적어주세요">
            </div>
            <!-- <div class="row"> -->
            <div class="col-50">
              <label for="poster" style="float: right;">poster</label>
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="synopsis">synopsis</label>
            </div>
            <div class="col-50">
              <textarea id="synopsis" name="synopsis" placeholder="영화 줄거리를 적어주세요" style="height: 259px"></textarea>
            </div>
            <div class="fileDrop col-25">
              <div id="poster" name=""  class="poster" style="height: 259px;">포스터를 여기에 올려주세요</div>
              <input type="hidden" name="poster" id="posterV">
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <input type="hidden" id="id" name="id" class="col82"  value="${movie.id}" >
            </div>
          </div>
          <div class="row">
            <input type="submit" value="submit" class="right">
          </div>
        </form>
        <input type="hidden" id="movieId">
        <input type="hidden" id="update" onchange="test()">
        <input type="hidden" id="update1" onchange="test1()">
        <input type="hidden" id="update2" onchange="test2()">
        <input type="hidden" id="update3" onchange="test3()">
      </div>
  </div>
</div>
</div>


<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
<%-- 현재 정보 세션에 저장하기 추후 할 예정
 $('#title').change(function(){
	/* var value = @request.RequestContext.HttpContext.Session['title']; */
	<%
	 session.removeAttribute("title");
   String s = $('#title').val();
   session.setAttribute("title", s); 
  %>
  console.log(<%=
  pageContext.getRequest().getParameter("title")
  /* (String)session.getAttribute("title") */ 
 %>+"!")

 console.log($('#title').val())
}); --%>

var title;
function test(){
  setTimeout(function () {
    win.close();
  }, 500);
  console.log(win);
};

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


$(document).ready(function(){
     console.log('test');
    $('#m_actor_list').change(function(){
      var check = document.getElementById('c_name').value;
      console.log(check);
    });
});


$(".fileDrop").on("dragenter dragover", function(event){
    event.preventDefault();
  });

  $(".fileDrop").on("drop", function(event){
    event.preventDefault();
    
    var files = event.originalEvent.dataTransfer.files;
    var file = files[0];
    
    /* console.log(file); */
    var formData = new FormData();
    
    formData.append("file", file);
    
     if(!checkImageType(file.name)){
      alert("jpg, png, jpeg형식에 아닙니다.");
      return false;
    }
    console.log(file);
    
    $.ajax({
      url: '/movie/admin/uploadAjax',
      data: formData,
      dataType: 'text',
      processData: false,
      contentType: false,
      type: 'POST',
      success: function(data){
          alert(data);
          
          var str = "";
          
          console.log(data);
          console.log(checkImageType(data));
          
          if(checkImageType(data)){
            $(".poster").empty();
            str = "<div>" + "<img src='<%= request.getContextPath() %>/admin/displayFile?fileName="
            		+data+"'/></a><small data-src="+data+"><i class='fas fa-times'></small></div>";
          };
          data = data.replace("s_", "");
          $(".poster").append(str)
          $("#posterV").val(data);
      }
    });/* end of upload ajax */
    
  });/* end of $(".fileDrop").on("drop", function */
      
  $(".poster").on("click", "small", function(event){
    
    var that = $(this);
    
    deleteFileAjax(that);
    console.log($(this).attr("data-src"));
  /*   $.ajax({
      url:"/movie/admin/deleteFile",
      type:"post",
      data: {fileName:$(this).attr("data-src")},
      dataType: "text",
      success: function(result){
        if(result == 'deleted'){
          alert("deleted");
          that.parent("div").remove();
        }
      }
    }); */
    
  });/* end of $(".uploadedList").on("click", "small", function */

  function deleteFileAjax(that){
    $.ajax({
        url:"/movie/admin/deleteFile",
        type:"post",
        data: {fileName:that.attr("data-src")},
        dataType: "text",
        success: function(result){
          if(result == 'deleted'){
            alert("deleted");
            that.parent("div").remove();
          }
        }
      });
  }
      
  function checkImageType(fileName){
    var pattern = /jpg|png|jpeg/i;
    return fileName.match(pattern);
  }

  function getOriginalName(fileName){
    if(checkImageType(fileName)){
      retuen;
    }
    var idx = fileName.indexOf("_")+1;
    return fileName.substr(idx);
  }

  function getImageLink(fileName){
    if(!checkImageType(fileName)){
      return;
    }
    var front = fileName.substr(0,12);
    var end = fileName.substr(14);
    
    return front + end;
  }
</script>

</body>
</html>
