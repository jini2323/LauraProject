<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/MyDetailInfo.css">

<div class="contentWrapper">
	<div class="container">
		<div class="profile">
			<div class="profile-box">
				<div class="profile-img">
					<a
						href="<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}"><img
						src="${rPath }/img/profile-img/profile_img.jpg"></a>
				</div>
				<div class="profile_info">
					<div class="profile_userName">
						<span>${sessionScope.sessionName}</span><b>��</b>
					</div>
					<div class="profile_userEmail">
						<p>${vo.email }</p>
					</div>
					<span class="profile_custom">
						<p class="profile_customType">����ȸ��</p> <!-- ����ȸ������ ���ȸ������ ���� -->
						<p>��</p>
						<p class="profile_customGrade">���</p> <!-- ��� ���� -->
					</span>
				</div>
				<!-- profile_info -->
				<hr
					class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB"
					style="margin: 12px 18px; height: 1px;">
				<div class="profileSide_bar">
					<ul class="profileSide_bar_list">
						<li><a href="#" class="active"> <span>�� �ݵ� ����</span>
						</a></li>
						<li><a href="#"> <span>�� ��ǥ ����</span>
						</a></li>
					</ul>
					<!-- profileSide_bar_list -->
				</div>
				<!-- profileSide_bar -->
				<hr
					class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB"
					style="margin: 12px 18px; height: 1px;">
				<div class="login_method" style="font-size: 12px;">
					<img src="${rPath }/img/myInfo/img.png" style="width: 15px;">
					<span>���̹��� �α��� ��</span>
				</div>
				<div class="logout">
					<a href="logout">
						<button type="button">
							<span>�α׾ƿ�</span>
						</button>
					</a>
				</div>
				<!-- logout -->
			</div>
			<!-- profile-box -->
		</div>
		<!-- profile -->
		<div class="InfoDetailContent">
			<div class="contents-box">
				<div class="contents">
					<h4>���� ������ �ݵ�</h4>
					<input type="hidden" name="num" value="${sessionScope.sessionNO }">
					<div class="content_list">
						<div class="content_list_item">
							<c:forEach var="e" items="${fplist}">
								<c:forEach var="d" items="${e.funparti}">

									<hr
										class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
									<a href="#">
										<dl>
											<dt>
												<i class="fa-solid fa-ranking-star"></i>
											</dt>
											<dd>����: ${e.funtitle } �ݵ��ۼ���: ${e.funwriter }
												�ݵ��ݾ�:${d.funmoney } �ݵ�����: ${d.joindate }</dd>
										</dl>
									</a>
									<hr
										class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
								</c:forEach>
							</c:forEach>
						</div>
						<!-- content_list -->
					</div>
					<!-- content_list_item -->

				</div>
				<!-- contents -->
			</div>
			<!-- contents-box -->
		</div>
		<!-- InfoDetailContent -->
	</div>
	<!-- container -->
</div>
<!-- contentWrapper -->



<%@include file="../temp/footer.jsp"%>