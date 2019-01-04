<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="side">
  <div class="sub-menu">
    <ul>
      <li class="select">
        <a href="<%=request.getContextPath()%>/admin/user">회원 관리</a>
      </li>
      <li>
        <a href="<%=request.getContextPath()%>/admin/movie">영화 관리</a>
        <ul>
          <li><a href="<%=request.getContextPath()%>/admin/movie/addM">영화 추가</a></li>
        </ul>
      </li>
      <li>
        <a href="<%=request.getContextPath()%>/admin/actor">배우 관리</a>
        <ul>
          <li><a href="<%=request.getContextPath()%>/admin/actor/addA">배우 추가</a></li>
        </ul>
      </li>
      <li>
        <a href="<%=request.getContextPath()%>/admin/director">감독 관리</a>
        <ul>
          <li><a href="<%=request.getContextPath()%>/admin/director/addD">감독 추가</a></li>
        </ul>
      </li>
    </ul>
  </div>
</div>
