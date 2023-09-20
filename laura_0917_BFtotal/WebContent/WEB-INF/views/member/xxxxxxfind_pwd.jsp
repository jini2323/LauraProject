<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/find_pwd.css">


<script src="${rPath}/js/ajaxDemo.js"></script>


<!-- ���� -->
<div class="container">
	<div class = "pwd-text">
		<h2>��й�ȣ ã��</h2>
		<h6>��й�ȣ�� ��ﳪ�� ��������? ���Ͻô� ����� ������ ��й�ȣ�� Ȯ���Ͻ� �� �ֽ��ϴ�.</h6>	
	</div> <!-- id-text �� -->
		
		<!-- ��й�ȣ �缳�� form -->
		<div class = "find-pwd">
			<div class = "find-pwd-method1">
				<h5>�� ��й�ȣ ����</h5>
				<p style = "margin: 0;">
					<span class="material-symbols-outlined"> check </span>
					��й�ȣ�� ��� ��ȣȭ�� ����Ǿ� �н� �� ã�Ƶ帱 �� ���� ���� �Դϴ�.
				</p>
				<p>
					<span class="material-symbols-outlined"> check </span>
					���� Ȯ���� ���� ��й�ȣ�� �缳�� �Ͻ� �� �ֽ��ϴ�.
				</p>
			<div class = "find-pwd-box">
					<input style = "border-color: #666666; border-radius: 5px; border-width: 1px;" class = "box" type = "text" placeholder="�̸��� �Է����ּ���">
					<input style = "border-color: #666666; border-radius: 5px; border-width: 1px;" class = "box" type = "text" placeholder="���̵�(�̸���)�� �Է����ּ���">
				</div>
			</div>
			
			<!-- ���� ��ư & ��ư -->
			<div class = "find-pwd-method2">
				<p>
					<span class="material-symbols-outlined"> error </span>
					��й�ȣ ã�� ����� �������ּ���.
				</p>
				<div class = "find-pwd-radioBtn" style = "border: 1px solid #a4a4a4; width:300px; height: 50px; background:#fff; margin-left: 300px; margin-right: 200px;">
				  <div>
						<input type="radio" name="contact" value="email"><span>e-mail�ּ�</span>
						<input type="radio" name="contact" value="phone"><span>��ϵ� �޴���</span>
				  </div>
				</div>
					<input class = "button" type="submit" value="���̵� ã��">
			</div>
		</div> <!-- find-id -->	
</div><!-- container -->			

<!-- display: grid; grid-template-columns:350px 350px;  -->


<%@include file="../temp/footer.jsp"%>