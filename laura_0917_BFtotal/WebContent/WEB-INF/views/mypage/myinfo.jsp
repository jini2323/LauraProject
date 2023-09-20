<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/myInfo.css">


<div class="contentWrapper" style="">
	<div class="container" style="">
		<div class="profile" style="">
			<div class="profile-box" style="">
				<div>
					<div class="profile-img" style="">
						<img src="${rPath}/img/member/${vo.profilepic}">
					</div>
				</div>
				<div class="profile_info" style="">
					<div class="profile_userName" style="">
						<span>${vo.nickname}</span><b style="margin-left: 7px;">��</b>
					</div>
					<span style="font-size: 12px; color: gray;">${vo.email}</span> <span
						class="profile_customStatus" style="">
						<p>����ȸ��</p> <!-- ����ȸ������ ���ȸ������ ���� -->
						<p>��</p>
						<p>${vo.grade}</p> <!-- ��� ���� -->
					</span>
				</div>
				<hr
					class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB"
					style="margin: 12px 18px; height: 1px;">
				<div class="login_method" style="font-size: 12px;">
					<img src="${rPath }/img/myInfo/img.png" style="width: 15px;">
					<span>���̹��� �α��� ��</span>
				</div>
				<div class="logout" style="">
					<a href="logout">
						<button type="button" class="button" style="">
							<span style="">�α׾ƿ�</span>
						</button>
					</a>
				</div>
			</div>
			<!-- profile-box -->
		</div>
		<!-- profile -->
		<div class="contents" style="">
			<div>
				<h5>����������</h5>
				<div class="content_list">
					<div class="content_list_item">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-ranking-star"></i> <span>���</span>
								</dt>
								<dd>${vo.grade}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-regular fa-envelope"></i> <span>�̸���</span>
								</dt>
								<dd>
									<span>${vo.email}</span>
								</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-user"></i> <span>�̸�</span>
								</dt>
								<dd>
									<span>${vo.name}</span>
								</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl id="nicknameInput">
								<dt>
									<i class="fa-regular fa-user"></i> <span>�г���</span>
								</dt>
								<dd>${vo.nickname}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-mobile-screen-button"></i> <span>��ȭ��ȣ</span>
								</dt>
								<dd>${vo.tel}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-venus-mars"></i> <span>����</span>
								</dt>
								<dd>${vo.memgender}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-cake-candles"></i> <span>�������</span>
								</dt>
								<dd>${vo.birthday}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-right-to-bracket"></i> <span>������</span>
								</dt>
								<dd>
									<span>${vo.mdate}</span>
								</dd>
							</dl>
						</a>
					</div>
					<!-- content_list -->
				</div>
				<!-- content_list_item -->
				<div class="custom_container" style="">
					<div class="custom-point-box" style="">
						<div class="point-coup" style="">
							<a hred="#">
								<dl style="">
									<dt style="">
										<span class="material-symbols-outlined">paid</span> <span>����Ʈ</span>
									</dt>
									<dd style="">
										<span style="">${vo.mempoint }</span>
										<!-- point data insert -->
										<span>P</span>
									</dd>
								</dl>
							</a>
							<hr
								class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
							<a hred="#">
								<dl style="">
									<dt style="">
										<span class="material-symbols-outlined">local_activity</span>
										<span>����</span>
									</dt>
									<dd style="">
										<span style="">6</span>
										<!-- coupon data insert -->
										<span>��</span>
									</dd>
								</dl>
							</a>
						</div>
						<!-- point-coup -->
					</div>
					<!-- custom-point-box -->
					<div class="custom-point-box">
						<div class="point-coup">
							<a hred="#">
								<dl>
									<dt>
										<span class="material-symbols-outlined">groups</span> <span>�ݵ�</span>
									</dt>
									<dd>900 p</dd>
								</dl>
							</a>
							<hr
								class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
							<a hred="#">
								<dl>
									<dt>
										<span class="material-symbols-outlined">shopping_cart</span> <span>�����</span>
									</dt>
									<dd>6 p</dd>
								</dl>
							</a>
						</div>
						<!-- point-coup -->
					</div>
					<!-- custom-point-box -->
				</div>
				<!-- custom_container -->
			</div>
			<!-- class�� ���� div -->
			<div class="regi_payment_container">
				<div class="regi_payment" style="">
					<a href="#">
						<div class="bannerInner" style="">
							<div class="banner-content" style="">
								<div class="banner-text" style="">
									<!-- icon -->
									<span class="material-symbols-outlined">credit_card</span> <b>��������
										����</b> <span class="payment_text" style="">�����ϰ� ī�� ����ϰ� ������
										�����غ�����!</span>
								</div>
								<a href="#">
									<div class="vari_payment" style="">
										<span class="vari_payment_text" style="">���� ���� ��� </span><span
											class="material-symbols-outlined" style="">navigate_next</span>
									</div>
								</a>
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="eventBanner-start">
				<div class="eventBanner" style="">
					<a href="#">
						<div class="bannerInner" style="">
							<div class="banner-content" style="">
								<div class="banner-text" style="">
									<img src="${rPath}/img/myInfo/business-funding.jpg" alt="�̹���"
										style="">
									<div>
										<p style="">LAURA �����Ϳ���</p>
										<b>�ݵ� ȫ���� �����غ�����</b>
									</div>
								</div>
								<!-- banner-text -->
							</div>
							<!-- banner-content -->
						</div>
						<!-- bannerInner -->
					</a>
				</div>
				<!-- eventBanner -->
			</div>
			<!-- eventBanner-start -->
			<div class="Myinfo_list" style="">
				<h4 style="">�� ����</h4>
				<div>
					<ul>
						<li style=""><a
							href="myDetailInfo?email=${sessionScope.sessionID}"
							class="active">
								<div style="">
									<span class="material-symbols-outlined">person</span> <span>��
										���� Ȯ�� �� ����</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="pwdedit?email=${sessionScope.sessionID}">
								<div style="">
									<!-- icon -->
									<span class="material-symbols-outlined">lock</span> <span>��й�ȣ
										����</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="delete?email=${sessionScope.sessionID}">
								<div style="">
									<span class="material-symbols-outlined">delete</span> <span>ȸ��
										Ż��</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						
						<%-- 0906_������: ������ ���� �Ϸ� ��  �������������� ������ �� �ֵ��� ����--%>
						<c:choose>
							<c:when test="${vo.arstatus == '����' }">
								<li style=""><a href="artistDetail?email=${sessionScope.sessionID}">
								<div style="">
									<!-- icon -->
									<span class="material-symbols-outlined">person</span> <span>����
									����</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
								</a></li>
							</c:when>
						</c:choose>
						
					</ul>
				</div>
			</div>
			<div class="Myinfo_list" style="">
				<h4 style="">�ݵ� �� ��ǥ ����</h4>
				<div>
					<ul>
						<li style=""><a href="funpartiList?fmem_num=${vo.num }"
							style="">
								<div style="">
									<span class="material-symbols-outlined">groups</span> <span>��
										�ݵ� ����</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">how_to_vote</span> <span>��
										��ǥ ����</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="Myinfo_list" style="">
				<h4 style="">�� Ȱ��</h4>
				<div>
					<ul>
						<li style=""><a href="#" style="">
								<div style="">
									<span class="material-symbols-outlined">edit_calendar</span> <span>����
										�� ��</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">chat</span> <span>����
										�� ���</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">favorite</span> <span>���ϱ�</span>
									<span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">shopping_cart</span> <span>�����
										���ų���</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="Myinfo_list" style="">
				<h4 style="">������</h4>
				<div>
					<ul>
						<li style=""><a href="#" style="">
								<div style="">
									<span class="material-symbols-outlined">support_agent</span> <span>�Ǹ���
										1:1 ä�� ���</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">smart_toy</span> <span>ê������</span>
									<span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<!-- Myinfo_list -->
		</div>
		<!-- contents -->
	</div>
	<!-- container -->
</div>
<!-- contentWrapper -->



<script>
<!-- ��ư Ŭ�� �� �۾� �� ���� ��� -->
//��� ��ũ�� �ش� li ��ҵ��� �����ɴϴ�.
const tabLinks = document.querySelectorAll('.Myinfo_list ul li a');


//��ũ�� Ŭ���� �� ����� �Լ�
tabLinks.forEach((link, index) => {
  link.addEventListener('click', function(event) {
      // ��� li ����� border-bottom ��Ÿ���� �ʱ�ȭ�մϴ�.
  	tabLinks.forEach(link => {
          link.classList.remove('active');
      });

      link.classList.add('active');
  });
});
</script>

<style>
.Myinfo_list
 
ul
 
li
 
a
</style>



<%@include file="../temp/footer.jsp"%>