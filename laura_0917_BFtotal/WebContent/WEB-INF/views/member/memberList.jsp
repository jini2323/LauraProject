<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<link rel="stylesheet" href="${rPath}/css/join.css">



<div id="wrap" class="container mt-5">
	<div class="row">
		<h2 style="text-align: center;">회원 목록</h2>
		<table class="table table-hover">
			<thead>
				<tr class="table-warning">
					<th scope="col">회원넘버</th>
					<th scope="col">이메일</th>
					<th scope="col">이름</th>
					<th scope="col">전화번호</th>
					<th scope="col">가입날짜</th>
				</tr>
			</thead>
			<tbody>
				<%--반복시작 --%>
				<c:forEach var="e" items="${list}">
					<tr>
						<th scope="row">${e.num}</th>
						<td>${e.email}</td>
						<td>${e.name}</td>
						<td>${e.tel}</td>
						<td>${e.mdate}</td>
					</tr>
				</c:forEach>
				<%--반복 끝 --%>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="5" class="text-end">총 회원수 : </th>
				</tr>
				<%@include file="../temp/pageProcess.jsp"%>

				<%-- 검색영역 --%>
				<tr>
					<th colspan="6">
						<!-- 기존의 리스트모델로 요청을 보낸다. -->
						<form class="d-flex" method="post" action="upList">
							<select class="form-control btn-mini" id="searchType"
								name="searchType" style="margin-left: 120px;">
								<option value="">검색</option>
								<option value="1">회원넘버</option>
								<option value="2">회원이메일</option>
								<option value="3">회원 전화번호</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." name="searchValue" id="searchValue"
								style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
				<%-- 검색영역 끝 --%>
			</tfoot>
		</table>
	</div>
</div>










<%@include file="../temp/footer.jsp"%>