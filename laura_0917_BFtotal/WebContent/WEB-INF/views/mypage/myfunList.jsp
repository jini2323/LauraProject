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
						<span>${sessionScope.sessionName}</span><b>님</b>
					</div>
					<div class="profile_userEmail">
						<p>${vo.email }</p>
					</div>
					<span class="profile_custom">
						<p class="profile_customType">개인회원</p> <!-- 개인회원인지 기업회원인지 변경 -->
						<p>·</p>
						<p class="profile_customGrade">등급</p> <!-- 등급 변경 -->
					</span>
				</div>
				<!-- profile_info -->
				<hr
					class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB"
					style="margin: 12px 18px; height: 1px;">
				<div class="profileSide_bar">
					<ul class="profileSide_bar_list">
						<li><a href="#" class="active"> <span>내 펀딩 내역</span>
						</a></li>
						<li><a href="#"> <span>내 투표 내역</span>
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
					<span>네이버로 로그인 중</span>
				</div>
				<div class="logout">
					<a href="logout">
						<button type="button">
							<span>로그아웃</span>
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
					<h4>내가 참여한 펀딩</h4>
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
											<dd>제목: ${e.funtitle } 펀딩작성자: ${e.funwriter }
												펀딩금액:${d.funmoney } 펀딩일자: ${d.joindate }</dd>
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