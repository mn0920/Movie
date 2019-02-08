<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminBasic.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminSmallAdd.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


<title>genreAdd</title>

</head>
<body>


  <div class="main">
    <div class="container">
      <form action="" method="POST">
        <div class="inline">
          <div class="row">
            <div class="col-25">
              <label for="genre_name">장르</label>
            </div>
            <div class="col-75">
              <input type="text" id="genre_name" name="genre_name" placeholder="이름을 적어주세요">
            </div>
          </div>
        </div>
        <div class="row mart5">
          <button type="submit" class="right mar16">등록</button>
        </div>
      </form>
    </div>
    <!-- con -->
  </div>
  <!-- main -->
  <input type="hidden" id="aaaa" value="${state}">

<script src="<%=request.getContextPath() %>/resources/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/additional-methods.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>

$("form").submit(function(){
  opener.document.getElementById('update').value = "update";
  opener.$('#update').trigger('change');
});
</script>

</body>
</html>