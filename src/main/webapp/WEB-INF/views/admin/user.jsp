<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/nav.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/adminBasic.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
  <title>user</title>
</head>
<body>
    
 <div class="all">
 <jsp:include page="adminTopMenu.jsp" />

<div class="row">
<jsp:include page="adminSideMenu.jsp" />
 
  
  <div class="main">
    <div class="container">
    
    
    
    </div><!-- end of main -->
  </div><!-- end of container -->
  
  
</div><!-- end of TopMenu -->
</div><!-- end of SideMenu -->

</body>
</html>