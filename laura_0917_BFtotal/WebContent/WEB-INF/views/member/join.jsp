<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/memberHead.jsp" %>
<link rel="stylesheet" href="${rPath}/css/join.css">

   <div class="wrap">
        <div class="login_in">
             <form action="loginProcess" method="post" id="loginInfo" autocomplete="on">
            	<div class="login_info">
	            	<h2>ȸ������</h2>
			        	<div style = "text-align: center; margin-bottom: 20px; font-size: 18px;">
				        	<span>�����ϸ� <b style = "font-weight: 600;">�ִ� 3000��</b></span><br>
		            	 	<span>��� ����Ʈ ����</span>
						</div>
				         <div class="speech-bubble">
		            		<span><img src = "${rPath}/img/join_icon/lighting.png">3�ʸ��� ���� ȸ������</span>
		            	</div>

             			<!-- ���� ���� btn -->
		       		     <!-- kakao btn -->
		       		   		<div class = "login-icon">
			           			<a href = "#">
					           		<div class = "icon_kakao" style = "align-items: center; gap:10px; display:flex; justify-content: center; background-color: #F6E10A; width:100%; height:50px; border-radius: 5px; padding: 10px 10px; margin: 10px 0; text-align: center;">
					            		<div class = "icon_img">
					            			<img src = "${rPath}/img/join_icon/kakao.png" style = "width:7%; width:30px; text-align: right;">
					            		</div>
					            		<span>īī�������� �����ϱ�</span>
					            	</div>	
			            		</a> 
				            <!-- naver btn -->
				            <a href = "#">
				           		<div class = "icon_naver" style = "align-items: center; gap:10px; display:flex; justify-content: center; background-color: #1EC800; width:100%; height:50px; border-radius: 5px; padding: 10px 10px; margin: 10px 0; text-align: center;">
				            		<div class = "icon_img">
				            			<img src = "${rPath}/img/join_icon/naver.jpg" style = "width:7%; width:30px; text-align: right;">
				            		</div>
				            		<span style = "color: #fff;">���̹��� �����ϱ�</span>
				            	</div>	
				            </a> 
				            <!-- google btn -->
				            <a href = "#">
				           		<div class = "icon_google" style = "align-items: center; gap:10px; display:flex; justify-content: center; background-color: #D32F2F; width:100%; height:50px; border-radius: 5px; padding: 10px 10px; margin: 10px 0; text-align: center;">
				            		<div class = "icon_img">
				            			<img src = "${rPath}/img/join_icon/google.png" style = "width:7%; width:30px; text-align: right;">
				            		</div>
				            		<span style = "color: #fff;">���۷� �����ϱ�</span>
				            	</div>	
				            </a> 
             			</div>
             			
             			
	             		<!-- ������ ��  -->
			       		 <div class = "horizontal-line mt-4" style = "border-bottom: 1px solid #D9D9D9; width:100%; height: 20px; text-align: center;"></div>
				            <div class = "d-flex justify-content-center horizontal-line-text-warp mb-3">
				            	<div class = "horizontal-line-text-w100 text-center" style = "margin-top: -14px; background-color: white; width: 100px; color:#868686; font-size: 14px;">���� ȸ������</div>
				            </div>
			            
			            <!-- login btn -->
				        <div class="submit" style = "margin-top: 15px;">
		              		<a href = "email_join"><input type="button" class = "submit-button" value="Email ����"></a>
		            	</div>
			            
			            <!-- login direct -->
             			<div class="to_join">
             				<div>
                			<a href="loginForm">���� �α���</a>
                			</div>
                			<a href="loginForm">�α����ϱ�</a>
             			</div>
             			
            		</div> <!-- login_info -->
             </form>
        </div> <!-- login_in -->
    </div> <!-- wrap -->




    <%@include file="../temp/footer.jsp" %>