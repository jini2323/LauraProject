<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/find_id.css">
<!-- ������ ��ũ -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<!-- ��ư ��ũ -->

<script src="${rPath}/js/ajaxDemo.js"></script>


<!-- ���� -->
<div class="container">
	<div class = "id-text">
		<h2>���̵� ã��</h2>
		<h6>���̵� ��ﳪ�� ��������? ���Ͻô� ����� ������ ���̵� Ȯ���Ͻ� �� �ֽ��ϴ�.</h6>	
	</div> <!-- id-text �� -->
		<div class = "find-id">
			<div class = "find-id-method1">
				<h5>���� ã��</h5>
				<p>�Է��Ͻ� ������ ���̵� ã�⿡�� ���Ǹ� <span style = "color: orange;">������� �ʽ��ϴ�.</span></p>
				<div class = "find-id-box">
					<input class = "box" type = "text" placeholder="�̸��� �Է����ּ���">
					<input class = "box" type = "text" placeholder="���� ������� 6�ڸ��� �Է����ּ���">
					<input class = "box" type = "text" placeholder="�޴���ȭ��ȣ�� �Է����ּ���">
					<input class = "button" type="submit" value="���̵� ã��">
				</div>
			</div>
			<div class = "find-id-method2">
				<h5>��������� ���� ã��</h5>
				<p>�������� �� �����Ǵ� ������ <span style = "color: orange;">�ش� ����������� ���� �����ϸ�,</span>
				<br>
				���� �̿��� �뵵�� �̿� �Ǵ� ������� �ʽ��ϴ�.</p>
				<div class = "find-id-box">
					<input type = "submit" value="�޴���ȭ ����">
				</div>
			</div>
		</div> <!-- find-id -->	
</div><!-- container -->			

<!-- display: grid; grid-template-columns:350px 350px;  -->


<%@include file="../temp/footer.jsp"%>