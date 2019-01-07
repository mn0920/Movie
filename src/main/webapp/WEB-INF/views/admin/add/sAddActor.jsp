<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminBasic.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSmallAdd.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    

<title>actorAdd</title>

</head>
<body>
 
  
  <div class="main">
    <div class="container">
        <form method="POST">
          <div class="fileDrop col-25">
            <div id="poster" name="poster"  class="poster">배우사진</div>
          </div>
          <div class="inline">
            <div class="row">
              <div class="col-25">
                <label for="genre_list">이름</label>
              </div>
              <div class="col-75">
                <input type="text" id="genre_list" name="genre_list" class="col82" placeholder="영화의 장르를 적어주세요." readonly>
                <button type="button" id="gBtn"><i class="fas fa-search"></i></button>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="director_list">생년월일</label>
              </div>
              <div class="col-75">
                <input type="text" id="director_list" name="director_list" class="col82" placeholder="영화 감독을 적어주세요" readonly>
                <button type="button" id="dBtn"><i class="fas fa-search"></i></button>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="actor_list">국가</label>
              </div>
              <div class="col-75">
                <input type="text" id="actor_list" name="actor_list" class="col82" placeholder="출연한 배우들의 이름을 적어주세요" readonly>
                <button type="button" id="aBtn"><i class="fas fa-search"></i></button>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="open_date">수상이력</label>
              </div>
              <div class="col-75">
                <input type="text" id="actor_list" name="actor_list" class="col82" placeholder="출연한 배우들의 이름을 적어주세요" readonly>
                <button type="button" id="aBtn"><i class="fas fa-search"></i></button>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="rate">성별</label>
              </div>
              <div class="col-75">
                <input type="text" id="actor_list" name="actor_list" class="col82" placeholder="출연한 배우들의 이름을 적어주세요" readonly>
                <button type="button" id="aBtn"><i class="fas fa-search"></i></button>
              </div>
            </div>
          </div>
          <div class="row mart5">
            <button type="submit" class="right mar16">등록</button>
          </div>
        </form>
      </div><!-- con -->
  </div><!-- main -->



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