<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <div class="side">
    <div class="sub-menu">
            <ul>
                <li class="select">
                    <a href="<%=request.getContextPath() %>/admin/cms/user">회원 관리</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath() %>/admin/cms/board">게시판 관리</a>
                </li>
            </ul>       
         </div>
  </div>
