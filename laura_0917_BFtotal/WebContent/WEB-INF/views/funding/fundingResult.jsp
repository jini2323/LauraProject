<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp"%>
<body>
	<table class="table">
		<thead>
			<tr>
				<th colspan="5">펀딩 참여 확인</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">회원번호</th>
				<td>${vo.fmem_num }</td>
			</tr>
			<tr>
				<th scope="row">펀딩글번호</th>
				<td>${vo.funnum_num }</td>
			</tr>
			<tr>
				<th scope="row">펀딩금액</th>
				<td colspan="2">${vo.funmoney }</td>
			</tr>
			<tr>
				<th scope="row">펀딩상태</th>
				<td colspan="2">${vo.funstatus }</td>
			</tr>
			<tr>
				<th scope="row">펀딩날짜</th>
				<td colspan="2">${vo.joindate }</td>
			</tr>
		</tbody>
	</table>
	<div>
		<button id="funlist" name="funlist" onclick="location='fboardList'">리스트</button>
		<button id="myhome" name="myhome"
			onclick="location='mypage?email=${sessionScope.sessionID}'">마이페이지</button>
	</div>
	<%@include file="../temp/footer.jsp"%>