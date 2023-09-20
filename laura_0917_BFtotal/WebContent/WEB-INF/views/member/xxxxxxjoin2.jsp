<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/join2.css">


		<div class="join">
		
			<div class = "join-box">
			<div class = "wrap" style = "width: 100%;">
	        	<div class = "title">
	            	<h2>회원가입</h2>
	            </div>
	            <!-- 회원가입 버튼 시작-->
	            <div class = "join_btn">
	              <!-- 회원가입 포인트 text -->
	              <div class = "point_text">
	            	<h5>가입하면 <strong>최대 3000원</strong></h5>
	            	 <h5>즉시 포인트 증정</h5>
	             </div>
	            	<div class="speech-bubble">
	            		<img src = "${rPath}/img/join_icon/lighting.png">3초만에 빠른 회원가입
	            	</div>
	        
		       		<!-- 간편 가입 btn -->
		       		   <!-- kakao btn -->
			           <a href = "#">
			           		<div class = "icon_kakao">
			            		<span><img src = "${rPath}/img/join_icon/kakao.png"> 카카오톡으로 가입하기</span>
			            	</div>	
			            </a> 
			            <!-- naver btn -->
			            <a href = "#">
			           		<div class = "icon_naver">
			            		<span><img src = "${rPath}/img/join_icon/naver.jpg"> 네이버로 가입하기</span>
			            	</div>	
			            </a>
			            <!-- google btn -->
			            <a href = "#">
			           		<div class = "icon_google">
			            		<span><img src = "${rPath}/img/join_icon/google.png"> 구글로 가입하기</span>
			            	</div>	
			            </a>
			            
			         <!-- 간편가입 줄  -->
		       		 <div class = "horizontal-line mt-4" style = "border-bottom: 1px solid #D9D9D9; width:100%; height: 20px; text-align: center;"></div>
			            <div class = "d-flex justify-content-center horizontal-line-text-warp mb-3">
			            	<div class = "horizontal-line-text-w100 text-center" style = "margin-top: -14px; background-color: white; width: 100px;">또는</div>
			            </div>
			            
			            <!-- 이메일로 회원가입 버튼 -->
			            <a href = "email_join">
			           		<div class = "email_login">
			            		<span>email 가입</span>
			            	</div>	
		       			</a> 
	            </div> <!-- 회원가입 버튼 끝 -->
	            
	            <!-- 로그인/ 이메일로 회원가입 영역 -->
	            <div class = "login_click">
	            	<div>
	            	<a href = "loginForm"><span>로그인하기</span></a>
	            	</div>
	            	<a href = "loginForm"><span>간편로그인</span></a>
	            </div> 
	            
            </div> <!-- join-box end -->
            </div>
		</div> <!-- join end -->

    <%@include file="../temp/footer.jsp" %>