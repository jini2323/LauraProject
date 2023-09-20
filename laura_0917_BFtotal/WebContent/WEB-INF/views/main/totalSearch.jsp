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

	<!-- 통합검색 실행 시 검색 키워드(searchValue)와 각 게시판마다의 검색 건 수와 게시글 제목, 내용 보여주기 -->
	<div class="container mt-3">
		<h2>검색결과 : ${searchValue}</h2>
	</div>

	<div class="container mt-3">
		<h2>펀딩리스트 : ${fundingSearchCount} 건</h2>
	</div>


	<div class="container mt-3">
		<h2>펀딩리스트 내 검색 결과 :</h2>
		<c:forEach var="f" items="${fundingsearch}">
			<p>${f.funtitle }</p>
			<p>${f.content }</p>
		</c:forEach>
		<p>${message1}</p>
	</div>


	<!-- 0906 이성근 통합검색 나머지 4개 구현 시작 -->
	<div class="container mt-3">
		<h2>파티리스트 : ${partySearchCount} 건</h2>
	</div>


	<div class="container mt-3">
		<h2>파티리스트 내 검색 결과 :</h2>
		<c:forEach var="p" items="${partysearch}">
			<p>${p.partytitle }</p>
			<p>${p.partycontent }</p>
		</c:forEach>
		<p>${message2}</p>
	</div>

	<div class="container mt-3">
		<h2>교환리스트 : ${tradeSearchCount} 건</h2>
	</div>


	<div class="container mt-3">
		<h2>교환리스트 내 검색 결과 :</h2>
		<c:forEach var="t" items="${tradesearch}">
			<p>${t.trtitle }</p>
			<p>${t.trcontent }</p>
		</c:forEach>
		<p>${message3}</p>
	</div>

	<div class="container mt-3">
		<h2>뉴스리스트 : ${newsSearchCount} 건</h2>
	</div>


	<div class="container mt-3">
		<h2>뉴스리스트 내 검색 결과 :</h2>
		<c:forEach var="n" items="${newssearch}">
			<p>${n.ntitle }</p>
			<p>${n.ncontent }</p>
		</c:forEach>
		<p>${message4}</p>
	</div>
	
		<div class="container mt-3">
		<h2> 이벤트리스트 : ${eventSearchCount} 건</h2>
	</div>


	<div class="container mt-3">
		<h2>이벤트리스트 내 검색 결과 :</h2>
		<c:forEach var="e" items="${eventsearch}">
			<p>${e.evTitle }</p>
			<p>${e.evContent }</p>
		</c:forEach>
		<p>${message5}</p>
	</div>
	
</body>

<%@include file="../temp/footer.jsp"%>