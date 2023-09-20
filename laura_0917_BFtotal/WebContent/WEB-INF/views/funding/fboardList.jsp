<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fmain_ing.css">



<div class="container">
	<div class="bar">
		<span>진행 중인 펀딩</span>
		<div class="top-bar">
			<div>
				<select class="selectBox"
					onchange="if(this.value) location.href=(this.value);">
					<option value="">전체</option>
					<option value="fmain_ing">진행중</option>
					<option value="fmain_fin">종료된</option>
					<option value="fmain_soon">오픈예정</option>
				</select>
			</div>
			<ul>
				<li><a href="#">최신순</a></li>
				<li><a href="#">인기순</a></li>
				<li><a href="#">추천순</a></li>
				<li><a href="#">마감임박순</a></li>
				<li><a href="#">모집금액순</a></li>
			</ul>
		</div>
	</div>
	<div class="funding-movie">
		<!-- 펀딩 리스트 반복 시작 -->
		<c:forEach var="e" items="${boardList}">
			<div class="movie">
				<a href="fboardDetail?funnum=${e.funnum }"><img
					src="${rPath }/img/fboard/${e.postimgn }" alt="Image 1"></a>
				<!-- 영화 제목 -->
				<div class="caption">${e.funtitle }</div>
				<!-- 영화 content미리보기 -->
				<p class="ff">${e.funpreview }</p>
				<!-- 진행바 위 text -->
				<div class="text-style">
					<div class="inner-text-style">
						<span><strong>50%</strong></span> <span>215,456,000원</span>
					</div>
					<div class="d-day">
						<span>10</span><span>일 남음</span>
					</div>
				</div>
				<!-- 진행바 위 text end -->
				<!-- 프로세스 바 -->
				<div class="progress-bar">
					<div class="progress-bar-inner" style="width: 50%;"></div>
				</div>
			</div>
		</c:forEach>
		<!-- 펀딩 리스트 반복 끝 -->
	</div>
	<!-- 페이징 처리 영역 -->
	<div>
		<%@include file="../temp/pageProcess.jsp"%>
	</div>
	<%-- 검색영역 --%>
	<div>
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
		</div>
		<!-- n_search 끝 -->
		<button type="button" class="btn btn-outline-secondary"
			onclick="location='fupform'">글작성</button>
	</div>
</div>
</html>

<%@include file="../temp/footer.jsp"%>