<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<script src="${rPath}/js/ajaxDemo.js"></script>
<article>
	<header style="color: white">����� �̺�Ʈ</header>
	<ul class="list-unstyled">
		<li class="border-top my-3">
			<h1 style="text-align: center;">����� �̺�Ʈ</h1>
		</li>
	</ul>
	<div class="container">
		<table class="table table-bordered" id="eventTable2">
			<thead>
				<tr>
					<th>�� ��ȣ</th>
					<th>�ۼ���</th>
					<th>����</th>
					<th>����</th>
					<th>��ȸ��</th>
					<th>�̺�Ʈ ������</th>
					<th>�̺�Ʈ ������</th>
					<th>�� �ۼ���</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${evList}">
					<tr>
						<td>${e.evNum}</td>
						<td>${e.evTitle}</td>
						<td>${e.reward}</td>
						<!-- �̹����� ������ ������ ��ũ  -->
						<c:choose>
							<c:when test="${e.evImg == null}">
								<!-- �̹����� ���� ��� -->
								<td><a href="eventDetail?evNum=${e.evNum}"> <img
										src="${rPath}/img/event_form/basic.PNG"
										style="width: 200px;"></a></td>
							</c:when>		
							<c:when test="${e.evImg != null}">
								<!-- �̹����� ���� ��� -->
								<td><a href="eventDetail?evNum=${e.evNum}"> <img
										src="${rPath}/img/eventImg/${e.evImg}"
										style="width: 200px;"></a></td>
							</c:when>
						</c:choose>
						<!-- �̹����� ������ ������ ��ũ  -->
						<td>${e.evHit}</td>
						<td>${e.evSdate}</td>
						<td>${e.evFdate}</td>
						<td>${e.evWdate}</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<%-- page���� --%>

				<%-- 
				<%@include file="../temp/pageProcess.jsp"%>

--%>
				<%-- �˻����� --%>
				<tr>
					<th colspan="9">
						<%-- ������ ����Ʈ �𵨷� ��û�� ������. --%>
						<form class="d-flex" method="post" action="searchList">
							<select class="form-control btn-mini" name="searchType"
								id="searchType" style="margin-left: 120px;">
								<option value="">�˻�</option>
								<option value="1">����</option>
								<option value="2">��¥?</option>
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
							onclick="location='eventform'">���ۼ�</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>

<%@include file="../temp/footer.jsp"%>" %>
