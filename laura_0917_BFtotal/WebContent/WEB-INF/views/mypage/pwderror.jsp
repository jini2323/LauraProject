<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>

<form method="get" action="pwdchkf" name="pwdedit">
<input type="hidden" name="email" value="${sessionScope.sessionID }">

<h1>��й�ȣ�� ��ġ���� �ʽ��ϴ�.</h1>
<h2>Ȯ�� �� �ٽ� �õ����ּ���.</h2>

<button type="submit" class="btn btn-primary" id="backpwdchk">���ư���</button>
</form>

<%@include file="../temp/footer.jsp" %>