<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="pageurl" value="?searchType=${searchType}&searchValue=${searchValue}&cPage"/> 


<tr>
	<th colspan="9" style="text-align: center;">
		<ul class="pagination" style="margin: 10px auto 20px;justify-content: center;">
			<%-- ���������� --%>
			<c:choose>
				<c:when test="${startPage <= page.pagePerBlock }">
				<li class="page-item disabled"><a class="page-link" href="#" >����</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item active">
					<a class="page-link" href="${pageurl}=${startPage -1}">����</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<%--nowPage �� �ش��� ���� ������ ��ũ�� �ɾ ������ �޴�  --%>
			<c:forEach varStatus="i" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${i.index == page.nowPage }"><!-- ������������ -->
						<li class="page-item active">
						<a class="page-link" href="#" style = "background-color: #00c4c4; border:1px solid #dee2e6;">
						${i.index }
						</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
						<a class="page-link" href="${pageurl }=${i.index }">[${i.index }]</a>
						</li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<%-- ���������� --%>
			<c:choose>
				<c:when test="${endPage >= page.totalPage }">
				<li class="page-item"><a class="page-link" href="#" style = "color: #00c4c4">
				����
				</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item active">
					<a href="${pageurl }=${endPage + 1 }" style = "color: #00c4c4"> ���� </a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</th>
</tr>