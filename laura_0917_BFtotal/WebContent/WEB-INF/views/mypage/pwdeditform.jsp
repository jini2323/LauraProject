<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>

<form method="post" action="pwdupdate" name="pwdedit">

	<input type="hidden" name="num" value="${vo.num }">
	<input type="hidden" name="pwd" value="${vo.pwd }">
	<input type="hidden" name="email" value="${vo.email }">
	
	<div class="mypage_pwd">
	<div class="mypage_pwd1">
		<label for="newpwd" class="col-sm-2 col-form-label">새 비밀번호</label>
		<input type="password" name="newpwd" id="newpwd" maxlength="12">
	</div>
	
	<div class="mypage_pwd2">
		<label for="newpwdchk" class="col-sm-2 col-form-label">새 비밀번호 확인</label>
		<input type="password" name="newpwdchk" id="newpwdchk" maxlength="12">
	</div>
	
	<button id="pwdUpdateBtn" class="btn btn-primary" type="submit">변경하기</button>
	</div>
	
</form>

<%@include file="../temp/footer.jsp" %>