<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>

<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>


		<div class="join">
			<div class = "join-box">
	        	<div class = "title" style ="margin-top: 50px; text-align: center; justify-content: center;">
	            	<h2>ȸ������</h2>
	            </div>
		            <!-- ȸ������ ��ư ����-->
		            <div class = "join_btn" style ="text-align: center; padding: 0 800px; margin-bottom: 20px; margin-top: 25px;">
		              <!-- ȸ������ ����Ʈ text -->
			              <div class = "point_text">
			            	<h5>�����ϸ� <strong>�ִ� 3000��</strong></h5>
			            	 <h5>��� ����Ʈ ����</h5>
			              </div>
			            	<div class="speech-bubble">
			            		<img src = "${rPath}/img/join_icon/lighting.png">3�ʸ��� ���� ȸ������
			            	</div>
		        
				       		<!-- ���� ���� btn -->
				       		   <!-- kakao btn -->
					           <a href = "#">
					           		<div class = "kakao-login">
					            		<span><img src = "${rPath}/img/join_icon/kakao.png"> īī�������� �����ϱ�</span>
					            	</div>	
					            </a> 
					            <!-- naver btn -->
					            <a href = "#">
					           		<div class = "naver_login">
					            		<span><img src = "${rPath}/img/join_icon/naver.jpg"> ���̹��� �����ϱ�</span>
					            	</div>	
					            </a>
					            <!-- google btn -->
					            <a href = "#">
					           		<div class = "google_login">
					            		<span><img src = "${rPath}/img/join_icon/google.png"> ���۷� �����ϱ�</span>
					            	</div>	
					            </a> <!-- ���� ���� btn ��!!-->
					            
						         <!-- �������� ��  -->
					       		 <div class = "horizontal-line mt-4" style = "border-bottom: 1px solid #D9D9D9; width:100%; height: 20px; text-align: center;"></div>
						            <div class = "d-flex justify-content-center horizontal-line-text-warp mb-3">
						            	<div class = "horizontal-line-text-w100 text-center" style = "margin-top: -14px; background-color: white; width: 100px;">�Ǵ�</div>
						            </div>
				            
					            <!-- �̸��Ϸ� ȸ������ ��ư -->
					            <a href = "email_join">
					           		<div class = "email_login">
					            		<span>email ����</span>
					            	</div>	
				       			</a> 
		            </div> <!-- ȸ������ ��ư �� -->
	            
		            <!-- �α���/ �̸��Ϸ� ȸ������ ���� -->
		            <div class = "login_click">
		            	<a href = "loginForm"><span>�α����ϱ�</span></a>
		            	<a href = "loginForm"><span>�����α���</span></a>
		            </div> 
            </div> <!-- join-box end -->
		</div> <!-- join end -->

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    