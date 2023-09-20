<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<script src="${rPath}/js/ajaxDemo.js"></script>


<article>
	<header style="color: white">�̺�Ʈ</header>
	<ul class="list-unstyled">
		<li class="border-top my-3">
			<h1 style="text-align: center;">�̺�Ʈ �۸���Ʈ</h1>
		</li>
	</ul>

	<div class="container">
		<ul class="list-unstyled horizontal-list"
			style="list-style: none; float: right; display: flex; justify-content: flex-end;">
			<li class="border-top my-3">
			<select
				class="form-control btn-mini" name="eventCat" id="eventCat"
				style="margin-right: 20px; width: 100px;">
					<a href="#"><option value="1">��ü</option></a>
					<a href="#"><option value="2">������</option></a>
					<a href="#"><option value="3">�����</option></a>
			</select></li>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">�α��</li></a>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">�����ӹ�</li></a>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">�ű�</li></a>
			<a href="#"><li class="border-top my-3" style="margin-right: 10px;">��������</li></a>
		</ul>
	</div>


	<div class="container">
		<table class="table table-bordered" id="eventTable">
			<thead>
				<tr>
					<th>�� ��ȣ</th>
					<th>����</th>
					<th>����</th>
					<th>�̹���</th>
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
						<td><a href="eventHit?evNum=${e.evNum}">${e.evTitle}</a></td>
						<td>${e.reward}</td>
						<!-- �̹����� ������ ������ ��ũ eventHit -->
						<c:choose>
							<c:when test="${e.evImg == null}">
								<!-- �̹����� ���� ��� -->
								<td><a href="eventHit?evNum=${e.evNum}"> <img
										src="${rPath}/img/event_form/basic.PNG" style="width: 200px;"></a></td>
							</c:when>
							<c:when test="${e.evImg != null}">
								<!-- �̹����� ���� ��� -->
								<td><a href="eventHit?evNum=${e.evNum}"> <img
										src="${rPath}/img/eventImg/${e.evImg}" style="width: 200px;"></a></td>
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


				<%@include file="../temp/pageProcess.jsp"%>

				<%-- �˻����� --%>
				<tr>
					<th colspan="8">
						<%-- ������ ����Ʈ �𵨷� ��û�� ������. --%>
						<form class="d-flex" method="post" action="eventMain">
							<select class="form-control btn-mini" name="searchType"
								id="searchType" style="margin-left: 120px;">
								<option value="">�˻�</option>
								<option value="1">����</option>
								<option value="2">����</option>
								<option value="3">����</option>
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
							onclick="location='eventform'">���ۼ�</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>

<%@include file="../temp/footer.jsp"%>" %>
