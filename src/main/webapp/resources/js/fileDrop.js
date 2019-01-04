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