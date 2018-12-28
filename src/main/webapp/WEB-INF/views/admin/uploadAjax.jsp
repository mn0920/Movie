<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
.fileDrop{
width : 234px;
height: 182px;
border: 1px dotted blue;
}
small {
margin-left: 3px;
font-weight: bold;
color: grey;
}
</style>

<title>upload AJax</title>
</head>
<body>

<h3>Ajax File Upload</h3>
<div class="fileDrop"><div class="uploadedList"></div></div>

<!-- <img class="uploadedList"> -->


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
				  str = "<div><a href='displayFile?fileName=" + getImageLink(data) + "'>" +
				  				  "<img src='displayFile?fileName="+data+"'/></a><small data-src="+data+">X</small></div>";
			  } else {
				  str = "<div><a href='displayFile?fileName="+data+"'>"+getOriginalName(data)+"</a>"+
						  "<small data-src="+data+">X</small></div></div>";
			  }
			  $(".uploadedList").append(str);
		}
	});/* end of upload ajax */
	
});/* end of $(".fileDrop").on("drop", function */
		
$(".uploadedList").on("click", "small", function(event){
	
	var that = $(this);
	
	$.ajax({
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
	});
	
});/* end of $(".uploadedList").on("click", "small", function */

function checkImageType(fileName){
	var pattern = /jpg|gif|png|jpeg/i;
	
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