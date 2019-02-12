
var dWin;
var aWin;
var gWin;

$(document).ready(function(){
    var popupX1 = (window.screen.width / 2) - (730 / 2);
    var popupY1= (window.screen.height / 2) - (600 / 2);
    var dPath = "/movie/join/D/cho";
	$('#dBtn').click(function(){
	  dWin = window.open(dPath,'searchDirector','width=700,height=500,location=no,status=no,scrollbars=yes,top='+popupY1+',left='+popupX1);
	  console.log(popupX1);
	  console.log(popupY1);
	  console.log(dWin);
	});
    var popupX2 = (window.screen.width / 2) - (430 / 2);
    var popupY2= (window.screen.height / 2) - (600 / 2);
    var aPath = "/movie/join/A/cho";
	$('#aBtn').click(function(){
	  aWin = window.open(aPath,'searchActor','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY2+',left='+popupX2);
	  console.log(popupX2);
	  console.log(popupY2);
	  console.log(aWin);
	});
	var popupX3 = (window.screen.width / 2) - (430 / 2);
	var popupY3= (window.screen.height / 2) - (600 / 2);
    var gPath = "/movie/join/G/cho";
	$('#gBtn').click(function(){
	  gWin = window.open(gPath,'searchGenre','width=430,height=500,location=no,status=no,scrollbars=yes,top='+popupY3+',left='+popupX3);
	  console.log(popupX3);
	  console.log(popupY3);
	  console.log(gWin);
	});
});

$(document).ready(function(){

	var btn = document.getElementById("gbtn3");
	var str = new String();
	var cnt = 1;

	$('.project-hover').click(function(){
		var t = $(this).prop('id');
		if(str.indexOf(t) == -1){
			if(cnt < 4){
				str += t+",";
			} else if(cnt == 4){
				str += t;
				put = 1;
			}
		cnt++
		alert(str);
		}
		if(cnt == 5){
			document.getElementById("u_preference").value = str;
			/*alert('abled');*/
			btn.disabled = false;
		}
	});
	$('.project-hover').on("click", function() { 
		var id = $(this).parent().prop('id');
		console.log(id);
		  $("button").click(function(){
		    $("p:first").addClass("intro");
		  });
	});
	
	$('.btn-refresh').click(function(){
		document.getElementById("u_preference").value = "";
		str="";
		cnt = 1;
		btn.disabled = true;
	});
var form = document.getElementsByTagName('form');
function checkValid(){
	if(!checkValidNickname()){
		alert('닉네임은 2~8자내로 입력해주세요.');
		return false;
	}
}
function checkValidNickname(){
	var regexNickname = /^[A-z 0-9 ㄱ-힣]{2,8}$/;
	var nickname = $('#nickname').val();
	if(!checkRegex(regexNickname,nickname)){
		return false
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
        nickname: {
            required : true,
            minlength : 2,
            maxlength : 12
        },
    },
    // 규칙체크 실패시 출력될 메시지
    messages : {
        nickname: {
            required : "필수로입력하세요",
            minlength : "최소 {0}글자이상이어야 합니다",
            maxlength : "최대 {0}글자이하이어야 합니다"
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
		return; // 그리고 밑에 있는 것이 실행 안되게 그냥 되돌려준다.
	}
	  var id = $("#id").val();// id가 id인 input 태그에 입력된 id 가져오기
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
/*$("#dup1").on("click",function(){*/
	if(!checkValidNickname()){
		return
	}
	var nickname= $('#nickname').val();
	$.ajax({
	    async:true,
	    type:'POST',
	    data:nickname,
	    url:"dup",// 컨트롤러에 설정할 URL
	    dataType:"json",
	    contentType:"application/json; charset=UTF-8",
	    success : function(data){
	    	console.log(data.dup);
	      if(data.dup){
	        alert("이미 사용중인 닉네임입니다.");
	      }else{
	        alert("사용 가능한 닉네임입니다.");
	      }
	    }
	});
/*});*/


});
