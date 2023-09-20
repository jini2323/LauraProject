<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fmain_ing.css">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src="${rPath}/js/ajaxDemo.js"></script>
<body>
	<h5 style = "padding-left: 330px; font-weight: bold;">진행 중인 펀딩</h5>
	<div class="bar">
		<div>
			<select class="selectBox"
				onchange="if(this.value) location.href=(this.value);">
				<option value>전체</option>
				<option value="fmain_ing">진행중</option>
				<option value="fmain_fin">종료된</option>
				<option value="fmain_soon">오픈예정</option>
			</select>
		</div>

		<ul style="display: flex;">
			<li><a class="selectItem" href="#" style="padding-right: 10px;">최신순</a>
				<a class="selectItem" href="#" style="padding-right: 10px;">인기순</a>
				<a class="selectItem" href="#" style="padding-right: 10px;">추천순</a>
				<a class="selectItem" href="#" style="padding-right: 10px;">마감임박순</a>
				<a class="selectItem" href="#">모집금액순</a></li>
		</ul>
	</div>

	<main>

		<div class="jiwoo">
			<c:forEach var="e" items="${boardList}">
				<div class="item">
					<a href="fboardDetail?funnum=${e.funnum }"><img
						src="${rPath }/img/fboard/${e.postimgn }" alt="Image 1"></a>
					<div class="caption">${e.funtitle }</div>
					<p style="color: gray; font-size: 14px; height: 130px;">${e.funpreview }</p>
					<p
						style="font-size: small; margin-bottom: 0px; margin-top: 7px; color: black;">
						<span style="margin-right: 50px;"><strong>진행률 345%</strong>&nbsp;215,456,000원</span>
						<span><strong>펀딩성공</strong></span>
					</p>
					<div class="progress-bar">
						<div class="progress-bar-inner" style="width: 100%;"></div>
					</div>
				</div>
			</c:forEach>
		</div>
		
	</main>
			
		<div>
		<%@include file="../temp/pageProcess.jsp"%>
	</div>

	<div>
		<%-- 검색영역 --%>
			<div class="f_search">
				<%-- 기존의 리스트 모델로 요청을 보낸다. --%>
				<form class="d-flex" method="post" action="fboardList">
					<select class="form-control btn-mini" name="searchType"
						id="searchType" style="text-align: center; width: 80px;">
						<option value="">검색</option>
						<option value="1">제목</option>
						<option value="2">내용</option>
					</select> <input class="form-control me-2" type="text" placeholder="Search.."
						name="searchValue" id="searchValue" style="width: 200px">
					<button class="btn btn-outline-secondary" type="submit">Search</button>
				</form>
			</div><!-- n_search 끝 -->
		<button type="button" class="btn btn-outline-secondary"
			onclick="location='fupform'">글작성</button>
	</div>
</body>
<%@include file="../temp/footer.jsp"%>