<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fmain_ing.css">



<div class="container">
	<div class="bar">
		<span>���� ���� �ݵ�</span>
		<div class="top-bar">
			<div>
				<select class="selectBox"
					onchange="if(this.value) location.href=(this.value);">
					<option value="">��ü</option>
					<option value="fmain_ing">������</option>
					<option value="fmain_fin">�����</option>
					<option value="fmain_soon">���¿���</option>
				</select>
			</div>
			<ul>
				<li><a href="#">�ֽż�</a></li>
				<li><a href="#">�α��</a></li>
				<li><a href="#">��õ��</a></li>
				<li><a href="#">�����ӹڼ�</a></li>
				<li><a href="#">�����ݾ׼�</a></li>
			</ul>
		</div>
	</div>
	<div class="funding-movie">
		<!-- �ݵ� ����Ʈ �ݺ� ���� -->
		<c:forEach var="e" items="${boardList}">
			<div class="movie">
				<a href="fboardDetail?funnum=${e.funnum }"><img
					src="${rPath }/img/fboard/${e.postimgn }" alt="Image 1"></a>
				<!-- ��ȭ ���� -->
				<div class="caption">${e.funtitle }</div>
				<!-- ��ȭ content�̸����� -->
				<p class="ff">${e.funpreview }</p>
				<!-- ����� �� text -->
				<div class="text-style">
					<div class="inner-text-style">
						<span><strong>50%</strong></span> <span>215,456,000��</span>
					</div>
					<div class="d-day">
						<span>10</span><span>�� ����</span>
					</div>
				</div>
				<!-- ����� �� text end -->
				<!-- ���μ��� �� -->
				<div class="progress-bar">
					<div class="progress-bar-inner" style="width: 50%;"></div>
				</div>
			</div>
		</c:forEach>
		<!-- �ݵ� ����Ʈ �ݺ� �� -->
	</div>
	<!-- ����¡ ó�� ���� -->
	<div>
		<%@include file="../temp/pageProcess.jsp"%>
	</div>
	<%-- �˻����� --%>
	<div>
		<div class="f_search">
			<%-- ������ ����Ʈ �𵨷� ��û�� ������. --%>
			<form class="d-flex" method="post" action="fboardList">
				<select class="form-control btn-mini" name="searchType"
					id="searchType" style="text-align: center; width: 80px;">
					<option value="">�˻�</option>
					<option value="1">����</option>
					<option value="2">����</option>
				</select> <input class="form-control me-2" type="text" placeholder="Search.."
					name="searchValue" id="searchValue" style="width: 200px">
				<button class="btn btn-outline-secondary" type="submit">Search</button>
			</form>
		</div>
		<!-- n_search �� -->
		<button type="button" class="btn btn-outline-secondary"
			onclick="location='fupform'">���ۼ�</button>
	</div>
</div>
</html>

<%@include file="../temp/footer.jsp"%>