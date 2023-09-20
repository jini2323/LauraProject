<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/find_id.css">
<!-- 아이콘 링크 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<!-- 버튼 링크 -->

<script src="${rPath}/js/ajaxDemo.js"></script>


<!-- 시작 -->
<div class="container">
	<div class = "id-text">
		<h2>아이디 찾기</h2>
		<h6>아이디가 기억나지 않으세요? 원하시는 방법을 선택해 아이디를 확인하실 수 있습니다.</h6>	
	</div> <!-- id-text 끝 -->
		<div class = "find-id">
			<div class = "find-id-method1">
				<h5>간편 찾기</h5>
				<p>입력하신 정보는 아이디 찾기에만 사용되며 <span style = "color: orange;">저장되지 않습니다.</span></p>
				<div class = "find-id-box">
					<input class = "box" type = "text" placeholder="이름을 입력해주세요">
					<input class = "box" type = "text" placeholder="법정 생년월일 6자리를 입력해주세요">
					<input class = "box" type = "text" placeholder="휴대전화번호를 입력해주세요">
					<input class = "button" type="submit" value="아이디 찾기">
				</div>
			</div>
			<div class = "find-id-method2">
				<h5>인증기관을 통한 찾기</h5>
				<p>본인인증 시 제공되는 정보는 <span style = "color: orange;">해당 인증기관에서 직접 수집하며,</span>
				<br>
				인증 이외의 용도로 이용 또는 저장되지 않습니다.</p>
				<div class = "find-id-box">
					<input type = "submit" value="휴대전화 인증">
				</div>
			</div>
		</div> <!-- find-id -->	
</div><!-- container -->			

<!-- display: grid; grid-template-columns:350px 350px;  -->


<%@include file="../temp/footer.jsp"%>