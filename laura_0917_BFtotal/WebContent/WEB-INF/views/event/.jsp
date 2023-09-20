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
<script src="${rPath}/js/ajaxDemo2.js"></script>

<article>
	<header style="color: white">Event(Evboard) Detail</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<div class="container-fluid px-4">
			<h1 class="mt-4">Event Detail/Admin</h1>
			<div class="card mb-4">
				<div class="card-body">
						<div class="mb-3 mt-3">
							<label class="form-label">�̺�Ʈ ��ȣ : </label>${vo.evNum}
						</div>
						<div class="mb-3">
							<label class="form-label">���� : </label> <input type="text"
								class="form-control" id="evTitile" name="evTitile" value="${vo.evTitile}"
								disabled>
						</div>
						<div class="mb-3">
							<label class="form-label">�ۼ���(���) : </label> <input type="text"
								class="form-control" id="evWriter" name="evWriter"
								value="${vo.evWriter}" disabled>
						</div>
						<div class="mb-3">
							<label class="form-label">���� : </label>
							<textarea class="form-control" id="evContent" name="evContent"
								disabled>${vo.evContent}</textarea>
						</div>
						<div class="mb-3">
							<label class="form-label">�̹��� : </label> <img
								src="${rPath}/img/eventMain/${vo.evImgn}"
								style="width: 80px; border: dotted 1px; cursor: pointer;" name="evImgn"
								id="evImgn">
						</div>
						<div class="mb-3">
							<label class="form-label">������ : </label> <img
								src="${rPath}/img/eventMain/${vo.evVeon}"
								style="width: 80px; border: dotted 1px; cursor: pointer;" name="evVeon"
								id="evVeon">
						</div>
						<div class="mb-3">
							<label class="form-label">�̺�Ʈ ������ : </label> ${vo.sdate}
						</div>
						<div class="mb-3">
							<label class="form-label">�̺�Ʈ ������ : </label> ${vo.fdate}
						</div>
						<div class="mb-3">
							<label class="form-label">������ : </label><%=request.getRemoteAddr()%>
						</div>
						<a href="eventMain" class="btn btn-outline-secondary">����Ʈ</a> <a
							href="modify?num=${vo.evNum}" class="btn btn-outline-warning">����</a>
						<a href="remove?num=${vo.evNum}" class="btn btn-outline-danger"
							onclick="return confirm('�����Ͻðڽ��ϱ�?')">����</a>
				</div>
			</div>
		</div>
	</div>

</article>

<%@include file="../temp/footer.jsp"%>





