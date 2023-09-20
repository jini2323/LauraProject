<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>

   <div style="text-align: center;">
   		<h1 style="text-align: center;">My Page 임시   </h1>
	<h3 style="text-align: center;">반갑습니다. ${vo.name} 님 </h3>
	<p>넘버: ${vo.num}</p>
	<p>이메일: ${vo.email}</p>
	<p>이름: ${vo.name}</p>
	<p>닉네임: ${vo.nname}</p>
	<p>전화번호: ${vo.tel}</p>
	<p>가입일: ${vo.mdate}</p>
	</div>

    <%@include file="../temp/footer.jsp" %>