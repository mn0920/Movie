<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<style>
* {
  box-sizing: inherit;
}

body{
padding:0;
}

div {
  margin: 0px;
  padding: 0px;
  border: solid 1px black;
  display: inline-block;
}

select{
margin: auto;
display: inline-block;
}

label{
  width: 100%;
}

input[type=text]{
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

input[type=text] {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
  width:13%;
  height:40px;
  padding: 12px 20px;
  margin: 0px 5px;
  line-height: 20px;
}

button:hover {
  background-color: #45a049;
}

row{
width: 100%;
margin-top: 6px;
}

.col-15 {
  float: left;
  width: 15%;
  margin-top: 6px;
  display:inline-block;
}

.col-20 {
  float: left;
  width: 20%;
  margin-top: 6px;
  display:inline-block;
}

.col-23 {
  float: left;
  width: 23%;
  margin-top: 0px;
  display:inline-block;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 0px;
  display:inline-block;
}

.col-27 {
  float: center;
  width: 100%;
  margin-top: 0px;
  display:inline-block;
}


/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.Center-Container {
  position: relative;
  height: 100%;
}

.left {
  width: 180px;
  height: 100%;
  display: inherit;
  margin: 0;
  margin-right: 5px;
}

.right {
  width: 297px;
  height: 232px;
}

.fileDrop {
  border: 1px dotted blue;
  display: inline-block;
  margin: 0;
}

small {
  margin-left: 3px;
  font-weight: bold;
  color: grey;
}

.actor_img {
  display: inherit;
}
</style>

<title>add Actor</title>
</head>
<body>
<div style="width: 487px; height: 232px;">
<!-- left box -->
<div class="left fileDrop">
  <div id="actor_img" name="actor_img" class="left">포스터를 여기에
    올려주세요</div>
</div>

<!-- right box -->
<div class="right">
  <label> 이름: <input type="text" class="info" id="name" name="name"></label>
    <div class="row">
      <div class="col-27">
        <label for="birth">생년월일</label>
      </div>
      </div>
      <div class="row">
      <div class="col-25">
        <select id="open_date" name="yyyy">
        <option value="">YYYY</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1950</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1960</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1970</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1980</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
        <option value="2000">1990</option>
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
      <select id="birth" name="mm">
        <option value="">MM</option>
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
      <select id="birth" name="dd">
        <option value="">dd</option>
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
  </div>
</div>


<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
	$(".fileDrop").on("dragenter dragover", function(event) {
		event.preventDefault();
	});

	$(".fileDrop").on("drop", function(event) {
						event.preventDefault();

						var files = event.originalEvent.dataTransfer.files;
						var file = files[0];

						/* console.log(file); */
						var formData = new FormData();

						formData.append("file", file);

						if (!checkImageType(file.name)) {
							alert("jpg, png, jpeg형식에 아닙니다.");
							return false;
						}
						console.log(file);

						$
								.ajax({
									url : '/movie/admin/uploadAjax',
									data : formData,
									dataType : 'text',
									processData : false,
									contentType : false,
									type : 'POST',
									success : function(data) {
										alert(data);

										var str = "";

										console.log(data);
										console
												.log(checkImageType(data));

										if (checkImageType(data)) {
											$(".actor_img").empty();
											str = "<div><a href='displayFile?fileName="
													+ getImageLink(data)
													+ "'>"
													+ "<img src='displayFile?fileName="
													+ data
													+ "'/></a><small data-src="+data+"><i class='fas fa-times'></small></div>";
										}
										$(".actor_img").append(str);
									}
								});/* end of upload ajax */

					});/* end of $(".fileDrop").on("drop", function */

	$(".actor_img").on("click", "small", function(event) {

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

	function deleteFileAjax(that) {
		$.ajax({
			url : "/movie/admin/deleteFile",
			type : "post",
			data : {
				fileName : that.attr("data-src")
			},
			dataType : "text",
			success : function(result) {
				if (result == 'deleted') {
					alert("deleted");
					that.parent("div").remove();
				}
			}
		});
	}

	function checkImageType(fileName) {
		var pattern = /jpg|png|jpeg/i;
		return fileName.match(pattern);
	}

	function getOriginalName(fileName) {
		if (checkImageType(fileName)) {
			retuen;
		}
		var idx = fileName.indexOf("_") + 1;
		return fileName.substr(idx);
	}

	function getImageLink(fileName) {
		if (!checkImageType(fileName)) {
			return;
		}
		var front = fileName.substr(0, 12);
		var end = fileName.substr(14);

		return front + end;
	}
</script>

</body>
</html>