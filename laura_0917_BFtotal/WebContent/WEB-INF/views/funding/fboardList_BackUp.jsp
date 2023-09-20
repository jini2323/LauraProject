<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fmain_ing.css">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src="${rPath}/js/ajaxDemo.js"></script>
<body>
	<h5 style = "padding-left: 330px; font-weight: bold;">���� ���� �ݵ�</h5>
	<div class="bar">
		<div>
			<select class="selectBox"
				onchange="if(this.value) location.href=(this.value);">
				<option value>��ü</option>
				<option value="fmain_ing">������</option>
				<option value="fmain_fin">�����</option>
				<option value="fmain_soon">���¿���</option>
			</select>
		</div>

		<ul style="display: flex;">
			<li><a class="selectItem" href="#" style="padding-right: 10px;">�ֽż�</a>
				<a class="selectItem" href="#" style="padding-right: 10px;">�α��</a>
				<a class="selectItem" href="#" style="padding-right: 10px;">��õ��</a>
				<a class="selectItem" href="#" style="padding-right: 10px;">�����ӹڼ�</a>
				<a class="selectItem" href="#">�����ݾ׼�</a></li>
		</ul>
	</div>

	<main>

		<div class="jiwoo">
			<c:forEach var="e" items="${boardList}">
				<div class="item">
					<a href="fboardDetail?funnum=${e.funnum }"><img
						src="${rPath }/img/fboard/${e.postimgn }" alt="Image 1"></a>
					<div class="caption">${e.funtitle }</div>
					<p style="color: gray; font-size: 14px; height: 130px;">${e.funpreview }</p>
					<p
						style="font-size: small; margin-bottom: 0px; margin-top: 7px; color: black;">
						<span style="margin-right: 50px;"><strong>����� 345%</strong>&nbsp;215,456,000��</span>
						<span><strong>�ݵ�����</strong></span>
					</p>
					<div class="progress-bar">
						<div class="progress-bar-inner" style="width: 100%;"></div>
					</div>
				</div>
			</c:forEach>
		</div>
		
	</main>
			
		<div>
		<%@include file="../temp/pageProcess.jsp"%>
	</div>

	<div>
		<%-- �˻����� --%>
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
			</div><!-- n_search �� -->
		<button type="button" class="btn btn-outline-secondary"
			onclick="location='fupform'">���ۼ�</button>
	</div>
</body>
<%@include file="../temp/footer.jsp"%>