<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<link rel="stylesheet" href="${rPath}/css/join.css">



<div id="wrap" class="container mt-5">
	<div class="row">
		<h2 style="text-align: center;">ȸ�� ���</h2>
		<table class="table table-hover">
			<thead>
				<tr class="table-warning">
					<th scope="col">ȸ���ѹ�</th>
					<th scope="col">�̸���</th>
					<th scope="col">�̸�</th>
					<th scope="col">��ȭ��ȣ</th>
					<th scope="col">���Գ�¥</th>
				</tr>
			</thead>
			<tbody>
				<%--�ݺ����� --%>
				<c:forEach var="e" items="${list}">
					<tr>
						<th scope="row">${e.num}</th>
						<td>${e.email}</td>
						<td>${e.name}</td>
						<td>${e.tel}</td>
						<td>${e.mdate}</td>
					</tr>
				</c:forEach>
				<%--�ݺ� �� --%>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="5" class="text-end">�� ȸ���� : </th>
				</tr>
				<%@include file="../temp/pageProcess.jsp"%>

				<%-- �˻����� --%>
				<tr>
					<th colspan="6">
						<!-- ������ ����Ʈ�𵨷� ��û�� ������. -->
						<form class="d-flex" method="post" action="upList">
							<select class="form-control btn-mini" id="searchType"
								name="searchType" style="margin-left: 120px;">
								<option value="">�˻�</option>
								<option value="1">ȸ���ѹ�</option>
								<option value="2">ȸ���̸���</option>
								<option value="3">ȸ�� ��ȭ��ȣ</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." name="searchValue" id="searchValue"
								style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
				<%-- �˻����� �� --%>
			</tfoot>
		</table>
	</div>
</div>










<%@include file="../temp/footer.jsp"%>