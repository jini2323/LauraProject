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

<article>
	<header style="color: white">����Ʈ</header>
	<ul class="list-unstyled">
		<li class="border-top my-3">�ݵ� ����Ʈ</li>
	</ul>
	<div class="container">
		<table class="table table-bordered" id="upboardTable">
			<thead>
				<tr>
					<th>�� ��ȣ</th>
					<th>������</th>
					<th>����</th>
					<th>�ۼ���</th>
					<th>��ȸ��</th>
					<th>�̸�����</th>
					<th>���</th>
					<th>�ݵ�������</th>
					<th>�ݵ�������</th>
				</tr>
			</thead>
			<tbody>
				<%-- for start 
				${vo.�Ӽ� } , ${map.key }
				List<BoardVO> list => BoardVO => e
				--%>
				<c:forEach var="e" items="${boardList}">
					<tr>
						<td>${e.fnum}</td>
						<!-- �̹����� ������ ������ ��ũ  -->    
						<td><a href="upHit?fnum=${e.fnum}"><img src="${rPath}/img/fboard/${e.imgn}" style="width: 200px;"></a></td>
						<td>${e.title}</td>
						<td>${e.fwriter}</td>
						<td>${e.hit}</td>
						<td>${e.preview}</td>
						<td>${e.cost}</td>
						<td>${e.sdate}</td>
						<td>${e.fdate}</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<%-- page���� --%>
				
			
				<%@include file="../temp/pageProcess.jsp"%>


				<%-- �˻����� --%>
				<tr>
					<th colspan="9">
						<%-- ������ ����Ʈ �𵨷� ��û�� ������. --%>
						<form class="d-flex" method="post" action="fboardList">
							<select class="form-control btn-mini" name="searchType"
								id="searchType" style="margin-left: 120px;">
								<option value="">�˻�</option>
								<option value="1">����</option>
								<option value="2">�̸�</option>
								<option value="3">����</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." name="searchValue" id="searchValue"
								style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
				<tr>
					<td colspan="9" style="text-align: right;">
						<button type="button" class="btn btn-outline-secondary"
							onclick="location='upform'">���ۼ�</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>

<%@include file="../temp/footer.jsp"%>