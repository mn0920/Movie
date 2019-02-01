
function openPage(pageName) {
        var i, tabcontent, tablinks;
        /*alert(pageName);*/
        tabcontent = document.getElementsByClassName("tabcontent");
        /* tab들의 class명이 전부다 tabcontent로 지정되어 있음 */
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablink");
        /* tab을 클릭했을때 내가 지금 현재 어느 tab에 있다라는 것을 보여주기 위한 것 */
        /* tablink는 위에 있는 button을 이야기하는 것임 */
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].style.backgroundColor = "";
        }
        document.getElementById(pageName).style.display = "block";
        /* elmnt.style.backgroundColor = color; */
    }
 
$(document).ready(function(){
	
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
		}
	});

/*	function abled() {
		var btn = document.getElementById("gbtn3");
		alert('undisabled');
		btn.disabled = false;
	}*/
	
	$('#hbtn2').click(function(){
		$('#hbtn1').val(0);
	});
	
	$('#gbtn2').click(function(){
		var btn = document.getElementById("gbtn3");
		alert('disabled');
		btn.disabled = true;
	});
	
	$('#btn-refresh').click(function(){
		$('#u_preference').val("");
	});
	
	var asd = $("#u_preference").val();
	if(asd != "") $("#gbtn3").disabled = false;
	
/* tab1 */
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
}function checkValidPwConfirm(){
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
        /*pwConfirm: {
            required : true,
            equalTo : pw
        },*/
        email: {
            required : true,
            email : true
        },
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
        /*pwConfirm: {
            required : "필수로입력하세요",
            equalTo : "비밀번호가 일치하지 않습니다."
        },*/
        email: {
            required : "필수로입력하세요",
            email : "메일규칙에 어긋납니다"
        },
    },
    submitHandler: function(form) {
        /*form.submit();*/
    	if($('#hbtn1').val() == 0){
    		$('#hbtn1').val(1);
    		openPage('tab2');
    		return false;
    	} else {
    		form.submit();
    	}
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

/* tab2 */
function myFunction() {
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}

});
