<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
  
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="메인 페이지">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>LAURA - 메인 페이지</title>

    <!-- Favicon -->
    <link rel="icon" href="${rPath}/img/core-img/favicon.ico">

    <!-- Style CSS -->
     <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/makingFunHead.css">  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700";">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/style.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/style_2.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/classy-nav.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/animate.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/owl.carousel.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/event_slide.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/party.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/trade.css">	
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <!-- 아이콘  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<script src="https://kit.fontawesome.com/4484f085b1.js" crossorigin="anonymous"></script>
	<!-- 아이콘  end-->
	<!-- font style -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
	<!-- swiper CDN -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<!-- swiper CDN end-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
	<script src ="${rPath}/js/ajaxDemo.js"></script>
<style>
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

.PreviewButton_container {gap: 20px;display: flex;}
</style>
	
</head>


		<div class = "AppNavbar_container">
			<div class="AppNavbar_laura_logo">
	            <a href="main" class="original-logo" style="font-size: 2.0rem;position: relative;left: 850px;">LAURA</a>
	        </div>
	        
	        	<div class="AppNavbar_buttonGroup">
	        		<div class = "PreviewButton_container">
	        			<a href = "loginForm">
	        				<span>로그인</span>
	        			</a>
	        			<a href = "memForm">
	        				<span>회원가입</span>
	        			</a>
	        		</div>
	        	</div>
			</div>
			
			
			
			
			
			
			
			
			
			
			
			
			