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
<link rel="stylesheet" href="${rPath}/css/style_mypage.css">
<script src="${rPath}/js/ajaxDemo.js"></script>


<div>
	<!-- 0712_����������_��ư -->
	<div class="row">
		<!-- 0703 ī��1 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-1">
					<div class="card-body">
						<h3 class="card-title text-white">���� Ȯ�� / ����</h3>
						<div class="d-inline-block">
							<h2 class="text-white">�� ����</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
		<!-- 0703 ī��2 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-2">
					<div class="card-body">
						<h3 class="card-title text-white">�ݵ����� / ��Ȳ</h3>
						<div class="d-inline-block">
							<h2 class="text-white">�ݵ�</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
		<!-- 0703 ī��3 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-3">
					<div class="card-body">
						<h3 class="card-title text-white">��ǥ���� / ��Ȳ</h3>
						<div class="d-inline-block">
							<h2 class="text-white">���</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
		<!-- 0703 ī��4 -->
		<button class="col-lg-3 col-sm-6">
			<a href="#">
				<div class="card gradient-4">
					<div class="card-body">
						<h3 class="card-title text-white">���� �� �� / ���</h3>
						<div class="d-inline-block">
							<h2 class="text-white">�� Ȱ��</h2>
						</div>
					</div>
				</div>
			</a>
		</button>
	</div>
	<!-- �����ݵ�����Ʈ -->
	<%-- <input type="hidden" id="fmem_num" value="${sessionScope.sessionNO }"> --%>
	<c:forEach var="e" items="${fplist}">
		����: ${e.funtitle }
		�ݵ��ۼ���: ${e.funwriter }
		<c:forEach var="d" items="${e.funparti}">
		        �ݵ��ݾ�: ${d.funmoney }
		        �ݵ�����: ${d.joindate }
		  </c:forEach>
		<%-- �ݵ��ݾ�: ${e.funmoney }
		�ݵ�����: ${e.joindate } --%>
	</c:forEach>
</div>


<%@include file="../temp/footer.jsp"%>