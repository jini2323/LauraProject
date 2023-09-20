<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>

<form method="get" action="pwdchkf" name="pwdedit">
<input type="hidden" name="email" value="${sessionScope.sessionID }">

<h1>비밀번호가 일치하지 않습니다.</h1>
<h2>확인 후 다시 시도해주세요.</h2>

<button type="submit" class="btn btn-primary" id="backpwdchk">돌아가기</button>
</form>

<%@include file="../temp/footer.jsp" %>