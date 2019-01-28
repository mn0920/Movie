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
  <div id="loading">
    <img id="loading-image" src="<%=request.getContextPath() %>/resources/images/loading.gif" alt="Loading..." />
    <label id="loading-image">배우 정보를 입력하는 중입니다.</label>
  </div>
    <div class="container">
        <form action="" method="POST">
          <div class="fileDrop col-25">
            <div id="poster" name=""  class="poster" style="height: 259px;">포스터를 여기에 올려주세요</div>
            <input type="hidden" name="actor_img" id="posterV">
          </div>
          <div class="inline">
            <div class="row">
              <div class="col-25">
                <label for="actor_name">이름</label>
              </div>
              <div class="col-75">
              <input type="text" id="actor_name" name="actor_name" placeholder="이름을 적어주세요">
            </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="actor_birth">생년월일</label>
              </div>
              <div class="col-75">
                <input type="text" id="actor_birth" name="actor_birth" placeholder="YYYYMMDD">
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="actor_country">국가</label>
              </div>
              <div class="col-75">
                <input type="text" id="actor_country" name="actor_country" placeholder="국적을 적어주세요">
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="actor_gender">성별</label>
              </div>
              <div class="col-75">
                <div class="col-50">
                  <label><input type="radio" id="male" name="actor_gender" value="male" checked>남성</label>
                </div>
                <div class="col-50">
                  <label><input type="radio" id="female" name="actor_gender" value="female">여성</label>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-25">
                <label for="a_trophy">수상이력</label>
              </div>
              <div class="col-25 a_trophy">
                <input type="text" id="a_trophy_year" name="a_trophy_year" placeholder="YYYYMMDD">
              </div>
              <div class="col-25 a_trophy">
                <input type="text" id="a_trophy_name" name="a_trophy_name" placeholder="ex-백상예술대상">
              </div>
              <div class="col-25 a_trophy">
                <input type="text" id="a_trophy_grade" name="a_trophy_grade" placeholder="ex-대상">
              </div>
            </div>
          </div>
          <div class="row mart5">
            <button type="submit" class="right mar16">등록</button>
          </div>
        </form>
      </div><!-- con -->
  </div><!-- main -->
  <input type="hidden" id="aaaa" value="${state}">

    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/additional-methods.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
var state = $("#aaaa").val();
$(window).load(function() {    
    $('#loading').hide();  
    if(state == 1){
    	$('.container').hide();
    	$('#loading').show();
    }
   });

$("form").submit(function(){
  opener.document.getElementById('update').value = "update";
  opener.$('#update').trigger('change');
});

/* 

var form = document.getElementsByTagName('form');

   $("form").validate({
    rules: {
      actor_birth: {
            required : true,
            minlength : 8,
            maxlength : 8,
            regex: /\d{8,8}/
        },
        a_trophy_year: {
            minlength : 8,
            maxlength : 8,
            regex: /\d{8,8}/
        },
    },
    //규칙체크 실패시 출력될 메시지
    messages : {
        pw: {
            required : "필수로입력하세요",
            regex : "YYYYMMDD"
        },
        a_trophy_year: {
            regex : "YYYYMMDD"
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
  ); */

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
          data = data.replace("s_", "");
          
          var str = "";
          test = data;
          $("#posterV").val(test);
          console.log("data : " + data);
          console.log(checkImageType(data));
          
          if(checkImageType(data)){
            $(".poster").empty();
            str = "<div>" + "<img src='<%= request.getContextPath() %>/admin/displayFile?fileName="
                +data+"'/></a><small data-src="+data+"><i class='fas fa-times'></small></div>";
          }
          $(".poster").append(str);
      }

    });/* end of upload ajax */
    
  });/* end of $(".fileDrop").on("drop", function */
  $('form').submit(function(){
      $("#posterV").val(test);
    });
    var test = null;  
      
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