<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<script src="${rPath}/js/ajaxDemo.js"></script>


<article>
	<header style="color: white">이벤트</header>
	<ul class="list-unstyled">
		<li class="border-top my-3">
			<h1 style="text-align: center;">이벤트 글리스트</h1>
		</li>
	</ul>

	<div class="container">
		<ul class="list-unstyled horizontal-list"
			style="list-style: none; float: right; display: flex; justify-content: flex-end;">
			<li class="border-top my-3">
			<select
				class="form-control btn-mini" name="eventCat" id="eventCat"
				style="margin-right: 20px; width: 100px;">
					<a href="#"><option value="1">전체</option></a>
					<a href="#"><option value="2">진행중</option></a>
					<a href="#"><option value="3">종료된</option></a>
			</select></li>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">인기순</li></a>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">마감임박</li></a>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">신규</li></a>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">공개예정</li></a>
		</ul>
	</div>


	<div class="container">
		<table class="table table-bordered" id="eventTable">
			<thead>
				<tr>
					<th>글 번호</th>
					<th>제목</th>
					<th>보상</th>
					<th>이미지</th>
					<th>조회수</th>
					<th>이벤트 시작일</th>
					<th>이벤트 종료일</th>
					<th>글 작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${evList}">
					<tr>
						<td>${e.evNum}</td>
						<td><a href="eventHit?evNum=${e.evNum}">${e.evTitle}</a></td>
						<td>${e.reward}</td>
						<!-- 이미지에 디테일 페이지 링크 eventHit -->
						<c:choose>
							<c:when test="${e.evImg == null}">
								<!-- 이미지가 없을 경우 -->
								<td><a href="eventHit?evNum=${e.evNum}"> <img
										src="${rPath}/img/event_form/basic.PNG" style="width: 200px;"></a></td>
							</c:when>
							<c:when test="${e.evImg != null}">
								<!-- 이미지가 있을 경우 -->
								<td><a href="eventHit?evNum=${e.evNum}"> <img
										src="${rPath}/img/eventImg/${e.evImg}" style="width: 200px;"></a></td>
							</c:when>
						</c:choose>
						<!-- 이미지에 디테일 페이지 링크  -->
						<td>${e.evHit}</td>
						<td>${e.evSdate}</td>
						<td>${e.evFdate}</td>
						<td>${e.evWdate}</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<%-- page영역 --%>


				<%@include file="../temp/pageProcess.jsp"%>

				<%-- 검색영역 --%>
				<tr>
					<th colspan="8">
						<%-- 기존의 리스트 모델로 요청을 보낸다. --%>
						<form class="d-flex" method="post" action="eventMain">
							<select class="form-control btn-mini" name="searchType"
								id="searchType" style="margin-left: 120px;">
								<option value="">검색</option>
								<option value="1">제목</option>
								<option value="2">보상</option>
								<option value="3">내용</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." name="searchValue" id="searchValue"
								style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
				<tr>
					<td colspan="8" style="text-align: right;">
						<button type="button" class="btn btn-outline-secondary"
							onclick="location='eventform'">글작성</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>

<%@include file="../temp/footer.jsp"%>" %>
