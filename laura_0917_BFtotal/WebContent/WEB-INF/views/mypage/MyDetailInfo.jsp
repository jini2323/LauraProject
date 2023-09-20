<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/MyDetailInfo.css">

<div class = "contentWrapper">
	<div class = "container">
		<div class = "profile">
			<div class = "profile-box">
				<div class ="profile-img">
					<a href = "<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}"><img src="${rPath}/img/member/${vo.profilepic}"></a>
				</div>
				<div class = "profile_info">
					<div class ="profile_userName"><span>${sessionScope.sessionName}</span><b>��</b></div>
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
							<a href= "pwdedit?num=${vo.num }">
								<span>��й�ȣ ����</span>
							</a>
						</li>
						<li>
							<a href= "delete?email=${vo.email }">
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
						<h4>�⺻����</h4>
							<form method="post" action="infoupdate" autocomplete="off" id=editform>
								<input type="hidden" name="num" value="${sessionScope.sessionNO }">
									<div class = "content_list">
										<div class= "content_list_item">
											<a href = "#">
												<dl class = "profileImg">
													<dt>
														<div class ="profile-img">
															<img src="${rPath}/img/member/${vo.profilepic}"><!-- 0903_������: �̹��� ������(������ ���� �ʿ�) -->
														</div>
														
													</dt>
													<dd>
														<strong>${sessionScope.sessionNNAME}</strong><b>��</b>&nbsp;<span>������ ����</span>
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#">
												<dl>
													<dt>
														<i class="fa-solid fa-ranking-star"></i>
														<span>���</span>
													</dt>
													<dd>
														${vo.grade}
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
												<a href="#" style="display: flex; align-items: center;">
												  <dl id="emailInput">
												    <dt>
												      <i class="fa-regular fa-envelope"></i>
												      <span>�̸���</span>
												    </dt>
												    <dd>
												      <div id="emailDisplayWrapper">
												        <span id="emailDisplay">${vo.email}</span>
												      </div>
												      <div id="emailEditWrapper" style="display: none;">
												        <input type="email" id="emailInputField" value="${vo.email}">
												        <button type="button" id="saveBtn" style = "display: inline;border: 1px solid #fff;background-color: rgb(165, 229, 230);margin-left: 10px;border-radius: 4px;width: 40px;height: 25px;"><span>����</span></button>
												      </div>
												    </dd>
												  </dl>
												  <!-- <button type="button" id="editBtn" style="width: 50px; height: 30px; border: none;"><span>����</span></button>
												  <span id="target"></span> -->
												</a>
											
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">	
											<a href = "#" style = "display: flex;align-items: center;">
												<dl id = "idInput">
													<dt>
														<i class="fa-solid fa-user"></i>
														<span>�̸�</span>
													</dt>
													<dd>
														<div id = ""></div>
														<span>${vo.name}</span>
													</dd>
												</dl>
												<!-- <button type = "button" id="" style = "width: 50px; height: 30px; border: none;"><span>����</span></button> -->
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#">
												<dl id = "nicknameInput">
													<dt>
														<i class="fa-regular fa-user"></i>
														<span>�г���</span>
													</dt>
													<dd>
														<input type="text" name="nickname" class="form-control" id="nickname" value="${vo.nickname}" style = " height: 30px; font-size: 13px;">
														<span id="target2"></span>
													</dd>
													<dd><button type="button" class="button" id="nnameChkBtn" style = "padding: 5px;cursor: pointer;background-color: #eee;border: 1px solid #ababab;">�ߺ�üũ</button></dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#" style = "display: flex;align-items: center;">
												<dl>
													<dt>
														<i class="fa-solid fa-mobile-screen-button"></i>
														<span>��ȭ��ȣ</span>
													</dt>
													<dd>
														${vo.tel}
													</dd>
												</dl>
												<!-- <button type = "button" id="" style = "width: 50px; height: 30px; border: none;"><span>����</span></button> -->
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#">
												<dl>
													<dt>
														<i class="fa-solid fa-venus-mars"></i>
														<span>����</span>
													</dt>
													<dd>
														${vo.memgender}
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#">
												<dl>
													<dt>
														<i class="fa-solid fa-cake-candles"></i>
														<span>�������</span>
													</dt>
													<dd>
														${vo.birthday}
													</dd>
												</dl>
											</a>
											<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
											<a href = "#">
												<dl>
													<dt>
														<i class="fa-solid fa-right-to-bracket"></i>
														<span>������</span>
													</dt>
													<dd>
														<span>${vo.mdate}</span>
													</dd>
												</dl>
											</a>
										</div><!-- content_list_item -->
									</div><!-- content_list -->
									<div class = "modi_btns">
							<button type="submit" class="button2"><span>�����ϱ�</span></button>
						</div>
				</form>
						
						<h4>�ΰ� ���� ����</h4>
						<div class = "content_list">
							<div class= "content_list_item">
								<a href = "#">
									<dl>
										<dt>
											<i class="fa-solid fa-house-chimney"></i>
											<span>����� ����</span>
										</dt>
										<dd>
											
										</dd>
									</dl>
								</a>
								<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
								<a href = "#">
									<dl>
										<dt>
											<i class="fa-regular fa-circle-user"></i>
											<span>�������� �̿볻��</span>
										</dt>
										<dd>
											
										</dd>
									</dl>
								</a>
							</div><!-- content_list_item -->
						</div><!-- content_list -->
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
$(document).ready(function() {
    $('.profileSide_bar_list li a').click(function() {
        // Ŭ���� ��ũ�� span�� 'active' Ŭ���� �߰�
        $('.profileSide_bar_list li a').removeClass('active');
        $(this).addClass('active');
    });
});


<!-- �г��� �ߺ� üũ -->
$(function() {
	$('#nnameChkBtn').click(function(e) {
		//alert("Test");
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

//�������������� �г��� �ߺ�Ȯ�ν� ���� �����Ǵ� ���
document.getElementById("nnameChkBtn").addEventListener("click", function() {
    var height = document.getElementById("nicknameInput");
    height.style.height = "40px";
});


/*  var editBtn = document.getElementById("editBtn");
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
  */
 
</script>






























































<%@include file="../temp/footer.jsp"%>