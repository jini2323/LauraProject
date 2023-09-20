<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp" %>
<link rel="stylesheet" href="${rPath}/css/loginForm.css">

   <div class="wrap">
        <div class="login_in">
             <form action="loginProcess" method="post" id="loginInfo" autocomplete="on">
            	
            	<div class="login_info">
	            	<h2>�α���</h2>
			        <div id="reip"> 
			        <input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			        </div>
			        	<!-- email -->
			            <div class="login_email">
			                <input type="email" name="email" id="email" placeholder="�̸��� �Է�">
			            </div>
	            
	            		<!-- pwd -->
			            <div class="login_pw">
			                <input type="password" name="pwd" id="pwd" placeholder="��й�ȣ �Է�">
			            </div>
			            
			            <!-- login etc -->
			            <div class="login_etc">
			                <div class="checkbox">
			                <input type="checkbox" name="logSession" id="logSession"> �α��� ���� ����
			                </div>
			                <div class="forgot_pw">
			                <a href="findID"><span>�α��� ������ �����̳���?</span></a>
			            	</div>
			            </div>
			            
			            <div style = "font-size: 13px; color: #fe5147">
			            	${emsg }
			            </div>
			            
			            
            			<!-- login btn -->
				        <div class="submit" style = "margin-top: 15px;">
		              		<input type="submit" class = "submit-button" value="�α���">
		            	</div>
	            
             
	             		<!-- ������ ��  -->
			       		 <div class = "horizontal-line mt-4" style = "border-bottom: 1px solid #D9D9D9; width:100%; height: 20px; text-align: center;"></div>
				            <div class = "d-flex justify-content-center horizontal-line-text-warp mb-3">
				            	<div class = "horizontal-line-text-w100 text-center" style = "margin-top: -14px; background-color: white; width: 100px; color:#868686;">���� �α���</div>
				            </div>
			            
			            
			            <!-- ���� ���� btn -->
		       		     <!-- kakao btn -->
		       		   		<div class = "login-icon" style = "align-items: center;">
			           			<a href = "https://accounts.kakao.com/login/?continue=https%3A%2F%2Fdevelopers.kakao.com%2Flogin%3Fcontinue%3D%252Fconsole%252Fapp&lang=ko#login">
					           		<div class = "icon_kakao" style = "cursor:pointer; gap:10px; display:flex; justify-content: center; background-color: #F6E10A; width:100%; height:50px; border-radius: 10px; padding: 10px 10px; margin: 10px 0; text-align: center;">
					            		<div>
					            			<img src = "${rPath}/img/join_icon/kakao.png" style = "width:7%; width:30px; text-align: right;">
					            		</div>
					            		<span>īī�������� �����ϱ�</span>
					            	</div>	
			            		</a> 
				            <!-- naver btn -->
				            <a href = "https://nid.naver.com/nidlogin.login?mode=form&url=https://www.naver.com/">
				           		<div class = "icon_naver" style = "cursor:pointer; gap:10px; display:flex; justify-content: center; background-color: #1EC800; width:100%; height:50px; border-radius: 10px; padding: 10px 10px; margin: 10px 0; text-align: center;">
				            		<div>
				            			<img src = "${rPath}/img/join_icon/naver.jpg" style = "width:7%; width:30px; text-align: right;">
				            		</div>
				            		<span>���̹��� �����ϱ�</span>
				            	</div>	
				            </a> 
				            <!-- google btn -->
				            <a href = "https://accounts.google.com/InteractiveLogin/identifier?elo=1&ifkv=Af_xneFiEINhIsWJTK0vNyqu91p2q3U0En4hasiWh8p-lxONHZnmjo8glfSmg0W-GYA8PTBGKTDsQA&flowName=GlifWebSignIn&flowEntry=ServiceLogin">
				           		<div class = "icon_google" style = "cursor:pointer; gap:10px; display:flex; justify-content: center; background-color: #D32F2F; width:100%; height:50px; border-radius: 10px; padding: 10px 10px; margin: 10px 0; text-align: center;">
				            		<div>
				            			<img src = "${rPath}/img/join_icon/google.png" style = "width:7%; width:30px; text-align: right;">
				            		</div>
				            		<span>���۷� �����ϱ�</span>
				            	</div>	
				            </a> 
             			</div>
             			<div class="to_join">
             				<div>
                			<span>���� �ƿ�� ������ ������?</span>
                			</div>
                			<a href="memForm">ȸ������</a>
             			</div>
            		</div> <!-- login_info -->
            	
             </form>
        </div> <!-- login_in -->
    </div> <!-- wrap -->




    <%@include file="../temp/footer.jsp" %>