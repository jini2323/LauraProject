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
						<span>${vo.nickname}</span><b style="margin-left: 7px;">님</b>
					</div>
					<span style="font-size: 12px; color: gray;">${vo.email}</span> <span
						class="profile_customStatus" style="">
						<p>개인회원</p> <!-- 개인회원인지 기업회원인지 수정 -->
						<p>·</p>
						<p>${vo.grade}</p> <!-- 등급 수정 -->
					</span>
				</div>
				<hr
					class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB"
					style="margin: 12px 18px; height: 1px;">
				<div class="login_method" style="font-size: 12px;">
					<img src="${rPath }/img/myInfo/img.png" style="width: 15px;">
					<span>네이버로 로그인 중</span>
				</div>
				<div class="logout" style="">
					<a href="logout">
						<button type="button" class="button" style="">
							<span style="">로그아웃</span>
						</button>
					</a>
				</div>
			</div>
			<!-- profile-box -->
		</div>
		<!-- profile -->
		<div class="contents" style="">
			<div>
				<h5>마이페이지</h5>
				<div class="content_list">
					<div class="content_list_item">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-ranking-star"></i> <span>등급</span>
								</dt>
								<dd>${vo.grade}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-regular fa-envelope"></i> <span>이메일</span>
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
									<i class="fa-solid fa-user"></i> <span>이름</span>
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
									<i class="fa-regular fa-user"></i> <span>닉네임</span>
								</dt>
								<dd>${vo.nickname}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-mobile-screen-button"></i> <span>전화번호</span>
								</dt>
								<dd>${vo.tel}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-venus-mars"></i> <span>성별</span>
								</dt>
								<dd>${vo.memgender}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-cake-candles"></i> <span>생년월일</span>
								</dt>
								<dd>${vo.birthday}</dd>
							</dl>
						</a>
						<hr
							class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
						<a href="#">
							<dl>
								<dt>
									<i class="fa-solid fa-right-to-bracket"></i> <span>가입일</span>
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
										<span class="material-symbols-outlined">paid</span> <span>포인트</span>
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
										<span>쿠폰</span>
									</dt>
									<dd style="">
										<span style="">6</span>
										<!-- coupon data insert -->
										<span>장</span>
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
										<span class="material-symbols-outlined">groups</span> <span>펀딩</span>
									</dt>
									<dd>900 p</dd>
								</dl>
							</a>
							<hr
								class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__3h-EB">
							<a hred="#">
								<dl>
									<dt>
										<span class="material-symbols-outlined">shopping_cart</span> <span>스토어</span>
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
			<!-- class명 없는 div -->
			<div class="regi_payment_container">
				<div class="regi_payment" style="">
					<a href="#">
						<div class="bannerInner" style="">
							<div class="banner-content" style="">
								<div class="banner-text" style="">
									<!-- icon -->
									<span class="material-symbols-outlined">credit_card</span> <b>결제정보
										관리</b> <span class="payment_text" style="">간편하게 카드 등록하고 빠르게
										결제해보세요!</span>
								</div>
								<a href="#">
									<div class="vari_payment" style="">
										<span class="vari_payment_text" style="">결제 수단 등록 </span><span
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
									<img src="${rPath}/img/myInfo/business-funding.jpg" alt="이미지"
										style="">
									<div>
										<p style="">LAURA 광고센터에서</p>
										<b>펀딩 홍보를 시작해보세요</b>
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
				<h4 style="">내 정보</h4>
				<div>
					<ul>
						<li style=""><a
							href="myDetailInfo?email=${sessionScope.sessionID}"
							class="active">
								<div style="">
									<span class="material-symbols-outlined">person</span> <span>내
										정보 확인 · 수정</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="pwdedit?email=${sessionScope.sessionID}">
								<div style="">
									<!-- icon -->
									<span class="material-symbols-outlined">lock</span> <span>비밀번호
										설정</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="delete?email=${sessionScope.sessionID}">
								<div style="">
									<span class="material-symbols-outlined">delete</span> <span>회원
										탈퇴</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						
						<%-- 0906_박형지: 예술인 인증 완료 후  마이페이지에서 관리할 수 있도록 연결--%>
						<c:choose>
							<c:when test="${vo.arstatus == '인증' }">
								<li style=""><a href="artistDetail?email=${sessionScope.sessionID}">
								<div style="">
									<!-- icon -->
									<span class="material-symbols-outlined">person</span> <span>인증
									정보</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
								</a></li>
							</c:when>
						</c:choose>
						
					</ul>
				</div>
			</div>
			<div class="Myinfo_list" style="">
				<h4 style="">펀딩 · 투표 내역</h4>
				<div>
					<ul>
						<li style=""><a href="funpartiList?fmem_num=${vo.num }"
							style="">
								<div style="">
									<span class="material-symbols-outlined">groups</span> <span>내
										펀딩 내역</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">how_to_vote</span> <span>내
										투표 내역</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="Myinfo_list" style="">
				<h4 style="">내 활동</h4>
				<div>
					<ul>
						<li style=""><a href="#" style="">
								<div style="">
									<span class="material-symbols-outlined">edit_calendar</span> <span>내가
										쓴 글</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">chat</span> <span>내가
										쓴 댓글</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">favorite</span> <span>찜하기</span>
									<span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">shopping_cart</span> <span>스토어
										구매내역</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="Myinfo_list" style="">
				<h4 style="">고객센터</h4>
				<div>
					<ul>
						<li style=""><a href="#" style="">
								<div style="">
									<span class="material-symbols-outlined">support_agent</span> <span>판매자
										1:1 채팅 상담</span> <span class="material-symbols-outlined"
										style="position: absolute; right: 0;">navigate_next</span>
								</div>
						</a></li>
						<li style=""><a href="#">
								<div style="">
									<span class="material-symbols-outlined">smart_toy</span> <span>챗봇연결</span>
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
<!-- 버튼 클릭 시 글씨 색 변경 기능 -->
//모든 링크와 해당 li 요소들을 가져옵니다.
const tabLinks = document.querySelectorAll('.Myinfo_list ul li a');


//링크를 클릭할 때 실행될 함수
tabLinks.forEach((link, index) => {
  link.addEventListener('click', function(event) {
      // 모든 li 요소의 border-bottom 스타일을 초기화합니다.
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