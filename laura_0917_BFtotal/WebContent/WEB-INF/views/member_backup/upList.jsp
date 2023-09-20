<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%--upList.jsp --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../temp/header.jsp"%>

<article>
	<header style="color: white">Fileupload Demo</header>
	<ul class="list-unstyled">
		<li class="border-top my-3">Fileupload</li>
	</ul>
	<div class="container">
		<table class="table table-bordered" id="upboardTable">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>�̹���</th>
					<th>����</th>
					<th>�ۼ���</th>
					<th>��ȸ��</th>
					<th>�ۼ���¥</th>
				</tr>
			</thead>
			<tbody>
				<%-- for start 
				${vo.�Ӽ� } , ${map.key }
				List<BoardVO> list => BoardVO => e
				--%>
				<c:forEach var="e" items="${list}">
					<tr>
						<td>${e.num }</td>
						<td><a href="boardDetail?num=${e.num }"> <img
								src="${rPath }/imgfile/${e.imgn}"
								style="width: 80px; border: dotted 1px; cursor: pointer;"></a></td>
						<td>${e.title }</td>
						<td>${e.writer }</td>
						<td>${e.hit }</td>
						<td>${e.bdate}</td>
					</tr>
				</c:forEach>
				<%-- for end --%>
			</tbody>
			<tfoot>
				<%-- page���� --%>
				<%--
				<tr>
					<th colspan="6" style="text-align: center;">
						<ul class="pagination" style="margin: 0 auto; width: 35%">
							<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</th>
				</tr>
				 --%>
				<%@include file="../temp/pageProcess.jsp" %>


				<%-- �˻����� --%>
				<tr>
					<th colspan="6"><!-- ������ ����Ʈ�𵨷� ��û�� ������. -->
						<form class="d-flex" method="post" action="upList">
							<select class="form-control btn-mini" id="searchType"
								name="searchType"style="margin-left: 120px;">
								<option value="">�˻�</option>
								<option value="1">����</option>
								<option value="2">�̸�</option>
								<option value="3">����</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." name="searchValue" id="searchValue" style="width: 300px">
							<button class="btn btn-outline-secondary" type="submit">Search</button>
						</form>
					</th>
				</tr>
				<tr>
					<td colspan="6" style="text-align: right;">
					<button class="btn btn-outline-secondary" type="button" onclick="location='upform'">�۾���</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>
<%@include file="../temp/footer.jsp"%>