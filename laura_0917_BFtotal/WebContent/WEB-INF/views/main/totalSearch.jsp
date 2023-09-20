<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<c:set var="rPath" value="${pageContext.request.contextPath }/resources" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/partyList1.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<body>

	<!-- ���հ˻� ���� �� �˻� Ű����(searchValue)�� �� �Խ��Ǹ����� �˻� �� ���� �Խñ� ����, ���� �����ֱ� -->
	<div class="container mt-3">
		<h2>�˻���� : ${searchValue}</h2>
	</div>

	<div class="container mt-3">
		<h2>�ݵ�����Ʈ : ${fundingSearchCount} ��</h2>
	</div>


	<div class="container mt-3">
		<h2>�ݵ�����Ʈ �� �˻� ��� :</h2>
		<c:forEach var="f" items="${fundingsearch}">
			<p>${f.funtitle }</p>
			<p>${f.content }</p>
		</c:forEach>
		<p>${message1}</p>
	</div>


	<!-- 0906 �̼��� ���հ˻� ������ 4�� ���� ���� -->
	<div class="container mt-3">
		<h2>��Ƽ����Ʈ : ${partySearchCount} ��</h2>
	</div>


	<div class="container mt-3">
		<h2>��Ƽ����Ʈ �� �˻� ��� :</h2>
		<c:forEach var="p" items="${partysearch}">
			<p>${p.partytitle }</p>
			<p>${p.partycontent }</p>
		</c:forEach>
		<p>${message2}</p>
	</div>

	<div class="container mt-3">
		<h2>��ȯ����Ʈ : ${tradeSearchCount} ��</h2>
	</div>


	<div class="container mt-3">
		<h2>��ȯ����Ʈ �� �˻� ��� :</h2>
		<c:forEach var="t" items="${tradesearch}">
			<p>${t.trtitle }</p>
			<p>${t.trcontent }</p>
		</c:forEach>
		<p>${message3}</p>
	</div>

	<div class="container mt-3">
		<h2>��������Ʈ : ${newsSearchCount} ��</h2>
	</div>


	<div class="container mt-3">
		<h2>��������Ʈ �� �˻� ��� :</h2>
		<c:forEach var="n" items="${newssearch}">
			<p>${n.ntitle }</p>
			<p>${n.ncontent }</p>
		</c:forEach>
		<p>${message4}</p>
	</div>
	
		<div class="container mt-3">
		<h2> �̺�Ʈ����Ʈ : ${eventSearchCount} ��</h2>
	</div>


	<div class="container mt-3">
		<h2>�̺�Ʈ����Ʈ �� �˻� ��� :</h2>
		<c:forEach var="e" items="${eventsearch}">
			<p>${e.evTitle }</p>
			<p>${e.evContent }</p>
		</c:forEach>
		<p>${message5}</p>
	</div>
	
</body>

<%@include file="../temp/footer.jsp"%>