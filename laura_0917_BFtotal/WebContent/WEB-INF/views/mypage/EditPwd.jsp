<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/EditPwd.css">

<div class = "contentWrapper">
	<div class = "container">
		<div class = "profile">
			<div class = "profile-box">
				<div class ="profile-img">
					<a href = "<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}"><img src="${rPath }/img/profile-img/profile_img.jpg"></a>
				</div>
				<div class = "profile_info">
					<div class ="profile_userName"><span>${sessionScope.sessionNNAME}</span><b>��</b></div>
					<div class = "profile_userEmail"><p>${vo.email }</p></div>
					<span class = "profile_custom">
						<p class = "profile_customType">����ȸ��</p> <!-- ����ȸ������ ���ȸ������ ���� -->
						<p>��</p> 
						<p class = "profile_customGrade">���</p> <!-- ��� ���� -->
					</span>
				</div><!-- profile_info -->
				<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB" style = "margin: 12px 18px;height: 1px;">
				<div class = "profileSide_bar">
					<ul class = "profileSide_bar_list">
						<li>
							<a href= "myDetailInfo?email=${sessionScope.sessionID}" class="active">
								<span>�� ���� Ȯ�� �� ����</span>
							</a>
						</li>
						<li>
							<a href= "editpwd">
								<span>��й�ȣ ����</span>
							</a>
						</li>
						<li>
							<a href= "#">
								<span>ȸ�� Ż��</span>
							</a>
						</li>
					</ul><!-- profileSide_bar_list -->
				</div><!-- profileSide_bar -->
				<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB" style = "margin: 12px 18px;height: 1px;">
				<div class = "login_method" style = "font-size: 12px;">
					<img src = "${rPath }/img/myInfo/img.png" style = "width:15px;">
					<span>���̹��� �α��� ��</span>
				</div>
				<div class = "logout">
					<a href = "logout">
						<button type = "button">
							<span>�α׾ƿ�</span>
						</button>
					</a>
				</div><!-- logout -->
			</div><!-- profile-box -->
		</div><!-- profile -->
			<div class = "InfoDetailContent">	
				<div class = "contents-box" >
					<div class = "contents">
						<h4>��й�ȣ �缳��</h4>
							<form method="post" action="edit" autocomplete="off" id=pwdchkform>
								<input type="hidden" name="num" value="${vo.num }">
								<input type="hidden" name="email" value="${vo.email }">
									<div class = "content_list">
										<div class= "content_list_item">
											<a href = "#">
												<dl class = "profileImg">
													<dt>
														<div class ="profile-img">
															<img src="${rPath }/img/profile-img/profile_img.jpg"><!-- �̹��� �����ؾ� �ϴ� �κ�  -->
														</div>
														
													</dt>
													<dd>
														<strong>${sessionScope.sessionNNAME}</strong><b>��</b>
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#">
												<dl>
													<dt>
														<span>���� ��й�ȣ</span>
													</dt>
													<dd>
														<input type = "password" id = "pwd" name="pwd">
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href="#" style="display: flex; align-items: center;">
											  <dl id="emailInput">
											    <dt>
											      <span>������ ��й�ȣ</span>
											    </dt>
											      <dd>
													<input type = "password" id = "pwd1" name="pwd">
												</dd>
											  </dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">	
											<a href = "#" style = "display: flex;align-items: center;">
												<dl id = "idInput">
													<dt>
														<span>������ ��й�ȣ Ȯ��</span>
													</dt>
													  <dd>
														<input type = "password" id = "pwd2" name="pwd">
													</dd>
												</dl>
											</a>
										</div><!-- content_list -->
									</div><!-- content_list_item -->
									<div class = "modi_btns">
							<button type="submit" class="button2"><span>����</span></button>
						</div>
					</form>		
				</div><!-- contents -->
			</div><!-- contents-box -->
				<!-- AD -->
				<div class ="eventBanner-start">
					<div class = "eventBanner" style = "background-color: rgb(165, 229, 230); height:76px; margin:30px 0; border-radius: 8px;">
						<a href = "#">
							<div class="bannerInner" style="margin: 0 auto; width: 320px; height: 100%;">
    							<div class="banner-content" style="padding: 15px 14px 0 9px; width: 100%; height: 100%; box-sizing: border-box;">
							        <div class="banner-text" style="display: flex; align-items: center;">
							            <img src="${rPath}/img/myInfo/business-funding.jpg" alt="�̹���" style="max-width: 100px; height: auto; margin-right: 10px;">
							            <div>
							                <p style="margin-bottom: 0; color: black;">LAURA �����Ϳ���</p>
							                <b>�ݵ� ȫ���� �����غ�����</b>
							            </div>
							        </div>
							    </div>
							</div>
						</a>
					</div>
				</div> <!-- AD-end -->
				<!--  <div class="event_AD" style = "display:flex;">
					<img src = "${rPath }/img/myInfo/attend.jpg" style = "width:200px; hieght:100px;">
					<img src = "${rPath }/img/blog-img/A101.png" style = "width:200px; hieght:100px;">
				</div>-->
			</div><!-- InfoDetailContent -->
		</div><!-- container -->
	</div><!-- contentWrapper -->



<script>
<!-- ��ư Ŭ�� �� �۾� �� ���� ��� -->
//��� ��ũ�� �ش� li ��ҵ��� �����ɴϴ�.
const tabLinks = document.querySelectorAll('.profileSide_bar ul li a');
// ��ũ�� Ŭ���� �� ����� �Լ�
tabLinks.forEach((link, index) => {
    link.addEventListener('click', function(event) {
        // ��� li ����� border-bottom ��Ÿ���� �ʱ�ȭ�մϴ�.
    	tabLinks.forEach(link => {
            link.classList.remove('active');
        });

        link.classList.add('active');
    });
});

<!-- �г��� �ߺ� üũ -->
$(function() {
	$('#nnameChkBtn').click(function(e) {
		alert("Test");
		e.preventDefault();
		let nnamev = $('#nickname').val();
		
		//Ajax ����� ĳ�� ����� ����
		$.ajaxSetup({
			cache:false
		});
		//Ajax ó��
		let path = "<%=application.getContextPath()%>/nickcheck?nickname="+nnamev;
		$.ajax({
			url:path,
			success:function(resData){ //callbac �Լ��� xhr.responseText ��ģ ����
				let idCnt = parseInt(resData);
				let msg = "";
				if (idCnt === 0) {
					msg = "��� ������ �г��� �Դϴ�.";
					$('#target2').css({"color":"#00c4c4" });
				} else {
					msg = "�̹� ������� �г��� �Դϴ�.";
					$('#target2').css("color","#fe5147");
				}
				$('#target2').html(msg);
				
			}
		});
	});
});


document.getElementById("nnameChkBtn").addEventListener("click", function() {
    var height = document.getElementById("nicknameInput");
    height.style.height = "40px";
});


 var editBtn = document.getElementById("editBtn");
 var saveBtn = document.getElementById("saveBtn");
 var emailDisplay = document.getElementById("emailDisplay");
 var emailInputField = document.getElementById("emailInputField");
 var emailDisplayWrapper = document.getElementById("emailDisplayWrapper");
 var emailEditWrapper = document.getElementById("emailEditWrapper");

 editBtn.addEventListener("click", function() {
   if (editBtn.textContent === "����") {
     editBtn.textContent = "���";
     saveBtn.style.display = "inline"; // ���� ��ư ǥ��
     emailDisplayWrapper.style.display = "none";
     emailEditWrapper.style.display = "block";
   } else {
     editBtn.textContent = "����";
     saveBtn.style.display = "none"; // ���� ��ư ����
     emailDisplayWrapper.style.display = "block";
     emailEditWrapper.style.display = "none";
   }
 });

 saveBtn.addEventListener("click", function() {
   var newEmail = emailInputField.value; // ����� �̸��� ��������
   // ���⼭ ������ ����� �̸����� �����ϰų� �����ϴ� ������ �߰��� �� �ֽ��ϴ�.
   emailDisplay.textContent = newEmail; // ȭ�鿡 ����� �̸��� ǥ��
   editBtn.textContent = "����"; // ��ư �ؽ�Ʈ ������� ����
   saveBtn.style.display = "none"; // ���� ��ư ����
   emailDisplayWrapper.style.display = "block";
   emailEditWrapper.style.display = "none";
 });
 
 function test() {
	   var p1 = document.getElementById('password1').value;
	   var p2 = document.getElementById('password2').value;
	   if(p1.length < 8) {
	           alert('�Է��� ���ڰ� 8���� �̻��̾�� �մϴ�.');
	           return false;
	       }
	       if( p1 != p2 ) {
	         alert("��й�ȣ����ġ");
	         return false;
	       } else{
	         alert("��й�ȣ�� ��ġ�մϴ�");
	         return true;
	       }
	 }
 
</script>

<style>
.profileSide_bar ul li a.active{color:#00c4c4;}
</style>




























































<%@include file="../temp/footer.jsp"%>