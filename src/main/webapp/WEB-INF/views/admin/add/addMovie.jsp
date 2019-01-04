<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#mBtn').click(function(){
  window.open('<%= request.getContextPath() %>/admin/MM/seaM','searchMovie','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#gBtn').click(function(){
  window.open('<%= request.getContextPath() %>/admin/MM/seaG','searchGenre','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#dBtn').click(function(){
  window.open('<%= request.getContextPath() %>/admin/MM/seaD','searchDirector','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
  console.log(popupX);
  console.log(popupY);
});
});

$(document).ready(function(){
    var popupX = (window.screen.width / 2) - (430 / 2);
    var popupY= (window.screen.height / 2) - (500 / 2);
$('#aBtn').click(function(){
	window.open('<%= request.getContextPath() %>/admin/MM/seaA','searchActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY+',left='+popupX);
	console.log(popupX);
	console.log(popupY);
});
});
</script>

 <div class="all">
 <jsp:include page="../adminTopMenu.jsp" />

<div class="row">
<jsp:include page="../adminSideMenu.jsp" />
 
  
  <div class="main">
    <div class="container">
        <form method="POST">
          <div class="row">
            <div class="col-25">
              <label for="title">Title</label>
            </div>
            <div class="col-75">
              <input type="text" id="title" name="title" class="col82" placeholder="영화의 제목을 적어주세요" readonly>
              <button type="button" id="mBtn"><i class="fas fa-search"></i></button>
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="genre_list">genre</label>
            </div>
            <div class="col-75">
              <input type="text" id="genre_list" name="genre_list" class="col82" placeholder="영화의 장르를 적어주세요." readonly>
              <button type="button" id="gBtn"><i class="fas fa-search"></i></button>
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="director_list"">director</label>
            </div>
            <div class="col-75">
              <input type="text" id="director_list" name="director_list" class="col82" placeholder="영화 감독을 적어주세요" readonly>
              <button type="button" id="dBtn"><i class="fas fa-search"></i></button>
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="actor_list">actor</label>
            </div>
            <div class="col-75">
              <input type="text" id="actor_list" name="actor_list" class="col82" placeholder="출연한 배우들의 이름을 적어주세요" readonly>
              <button type="button" id="aBtn"><i class="fas fa-search"></i></button>
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="open_date">open date</label>
            </div>
            <div class="col-25">
              <select id="open_date" name="yyyy">
                <option value="null">YYYY</option>
                <option value="2000">2000</option>
                <option value="2001">2001</option>
                <option value="2002">2002</option>
                <option value="2003">2003</option>
                <option value="2004">2004</option>
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
                <option value="2011">2011</option>
                <option value="2012">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
                <option value="2018">2018</option>
              </select>
            </div>
            <div class="col-25">
              <select id="open_date" name="mm">
                <option value="null">MM</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
              </select>
            </div>
            <div class="col-25">
              <select id="open_date" name="dd">
                <option value="null">dd</option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
            </div>
          </div>
          <div class="row">
            <div class="col-25">
              <label for="rate">Rate(관람가능 연령)</label>
            </div>
            <div class="col-25">
              <input type="text" id="rate" name="rate" placeholder="관람 가능 연령을 적어주세요">
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
              <div id="poster" name="poster"  class="poster" style="height: 259px;">포스터를 여기에 올려주세요</div>
            </div>
          </div>
          <div class="row">
            <input type="submit" value="submit" class="right">
          </div>
        </form>
      </div>
  </div>
</div>
</div>


<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
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
	          str = "<div><a href='displayFile?fileName=" + getImageLink(data) + "'>" +
	                    "<img src='displayFile?fileName="+data+"'/></a><small data-src="+data+"><i class='fas fa-times'></small></div>";
	        }
	        $(".poster").append(str);
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
