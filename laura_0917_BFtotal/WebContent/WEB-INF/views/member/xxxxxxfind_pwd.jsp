<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/find_pwd.css">


<script src="${rPath}/js/ajaxDemo.js"></script>


<!-- 시작 -->
<div class="container">
	<div class = "pwd-text">
		<h2>비밀번호 찾기</h2>
		<h6>비밀번호가 기억나지 않으세요? 원하시는 방법을 선택해 비밀번호를 확인하실 수 있습니다.</h6>	
	</div> <!-- id-text 끝 -->
		
		<!-- 비밀번호 재설정 form -->
		<div class = "find-pwd">
			<div class = "find-pwd-method1">
				<h5>새 비밀번호 설정</h5>
				<p style = "margin: 0;">
					<span class="material-symbols-outlined"> check </span>
					비밀번호의 경우 암호화로 저장되어 분실 시 찾아드릴 수 없는 정보 입니다.
				</p>
				<p>
					<span class="material-symbols-outlined"> check </span>
					본인 확인을 통해 비밀번호를 재설정 하실 수 있습니다.
				</p>
			<div class = "find-pwd-box">
					<input style = "border-color: #666666; border-radius: 5px; border-width: 1px;" class = "box" type = "text" placeholder="이름을 입력해주세요">
					<input style = "border-color: #666666; border-radius: 5px; border-width: 1px;" class = "box" type = "text" placeholder="아이디(이메일)를 입력해주세요">
				</div>
			</div>
			
			<!-- 라디오 버튼 & 버튼 -->
			<div class = "find-pwd-method2">
				<p>
					<span class="material-symbols-outlined"> error </span>
					비밀번호 찾기 방법을 선택해주세요.
				</p>
				<div class = "find-pwd-radioBtn" style = "border: 1px solid #a4a4a4; width:300px; height: 50px; background:#fff; margin-left: 300px; margin-right: 200px;">
				  <div>
						<input type="radio" name="contact" value="email"><span>e-mail주소</span>
						<input type="radio" name="contact" value="phone"><span>등록된 휴대폰</span>
				  </div>
				</div>
					<input class = "button" type="submit" value="아이디 찾기">
			</div>
		</div> <!-- find-id -->	
</div><!-- container -->			

<!-- display: grid; grid-template-columns:350px 350px;  -->


<%@include file="../temp/footer.jsp"%>