<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src="${rPath}/js/ajaxDemo.js"></script>

<!-- [�ٵ� ����] -->
<div>
	<header>
		<h1 style="text-align: center;">������ ����</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>
		<form action="updateart" method="post" enctype="multipart/form-data"
			id="upform">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<input type="hidden" name="num" value="${sessionScope.sessionNO}">
			<input type="hidden" name=email value="${sessionScope.sessionID}">	
			<div class="form-group">
				<label for="addr">�ּ�</label> <input type="text" class="form-control"
					id="addr" name="addr" required="required">
			</div>
			<div class="form-group">
				<label for="bankaccount">���¹�ȣ</label> <input type="text"
					class="form-control" id="bankaccount" name="bankaccount"
					pattern=".{2,16}" required="required">
			</div>
			<div class="form-group">
				<label for="arprofile">�̷�</label>
				<textarea class="form-control" rows="5" id="arprofile"
					name="arprofile" placeholder="�ݵ� ���ε� �� �� �̷� �� �Ұ�"
					required="required"></textarea>
			</div>

			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">������ ���</button>
				<input type="button" value="���������� ���ư���" class="btn btn-danger"
					onclick="location='mypage?email=${sessionScope.sessionID}'" />
			</div>
		</form>
	</div>

</div>


<%@include file="../temp/footer.jsp"%>