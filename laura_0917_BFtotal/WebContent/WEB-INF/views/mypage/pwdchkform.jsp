<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>

<form method="post" action="pwdchk" autocomplete="off" id=pwdchkform>
			<input type="hidden" name="num" value="${vo.num }">
			<input type="hidden" name="email" value="${vo.email }">
<div class="row mb-3">
	<label for="pwd" class="col-sm-2 col-form-label">��й�ȣ Ȯ�� : </label>
	<div class="col-sm-2">
	
	��й�ȣ : <input type="password" name="pwd" class="form-control" id="pwd" placeholder = "���� ��й�ȣ �Է�">
	<button type="submit" class="btn btn-primary" id="pwdchkBtn">��й�ȣ Ȯ��</button>
	</div>
</div>
</form>

<%@include file="../temp/footer.jsp" %>