<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess.css">


<div class = "fundingProcess_container">
	<div class = "border-line">
		<div class = "fundingSideBar">
			<div class ="fundingSideBar_userInfo">
				<div class = "fundingSideBar_userInfo_flagGroup">
					<span class = "fundingSideBar_userInfo_flag">프로젝트</span>
					<span class = "fundingSideBar_userInfo_flag">작성 중</span>
				</div>
				<div class = "fundingSideBar_userName">
					<span>${sessionScope.sessionName}님의</span>
					<br>
					<span>멋진 프로젝트</span>
				</div>
			</div><!-- fundingSideBar_userInfo -->
		</div><!-- fundingSideBar -->
		<nav class = "AppSidebarMenuList_container">
			<div class = "sideMenu_title">프로젝트 관리</div>
				<ul>
					<!-- <li>요금제 선택</li> -->
					<a href = "pagefour"><li>프로젝트 정보</li></a>
					<a href = "pagefive"><li>기본 정보</li></a>
					<a href = "pagesix"><li>스토리 작성</li></a>
					<!-- <li>리워드 설계</li>
					<li>정책</li>
					<li>메이커 정보</li>
					<li>대표자 및 정산 정보</li> -->
				</ul>
				<div class = "sideMenu_service">프로젝트 1:1문의</div>
				<div class = "sideMenu_service">고객센터 연결</div>
		</nav>
		<div class ="AppSidebarContainer_layer" style = "position: absolute;top: 50px;background-color: hsla(0,0%,100%,.6);width: 20%;height: 155%;"></div>
	</div>
	<div class = "appLayoutContents">
		<div class = "appLayout_container">
			<div class = "fundingIntroContainer">
				<strong class = "fundingIntroContainer_title">${sessionScope.sessionName}님, 반가워요&nbsp;<i class="fa-regular fa-face-smile-wink"></i></strong>
				<p class = "fundingIntroContainer_description">프로젝트가 성공할 수 있도록 라우라가 함께할게요.</p>
				<section class = "section_container">
					<!-- <h2 class = "section_title">카테고리</h2>
					<div class = "section_description">
						프로젝트와 가장 잘 어울리는 카테고리를 선택해 주세요. <br>
						프로젝트를 만들고 바꿀 수 있어요
					</div> -->
					<!-- <div class = "section_dropdownBar">
						<div class = "dropdownMenu">
							
						</div>
					</div>section_dropdownBar -->
				</section><!-- section_container -->
			</div><!-- fundingIntroContainer -->
			<section class = "Information_container">
				<h3 class = "Infotmation_title">프로젝트 진행 시 참고해 주세요</h3>
				<ul class = "Infotmation_infoList">
					<li class = "Infomation_infoListItem">
						<div class = "subTitle">
							1) 프로젝트 오픈 과정
						</div>
						<div class = "Infomation_processBox">
							<div class = "Infomation_stepBox" aria-hidden="true">
								<img src = "${rPath }/img/making_funding/running.png">심사 완료까지 평균 7일 소요
							</div>
							<ol class = "Infomation_processList">
								<li class = "Infomation_listItem">
									<span class = "Information_text">작성</span>
									<ul class = "Infomation_detailInfoList">
										<li>[프로젝트 관리] 메뉴를 모두 작성하면 제출할 수 있어요.</li>
										<li>리워드 샘플 이미지가 스토리에 포함되어야 해요 (캐릭터·굿즈 리워드는 <br>렌더링 이미지로 대체 가능)</li>
									</ul>
								</li>
								<li class = "Infomation_listItem">
									<span class = "Information_text">심사</span>
									<ul class = "Infomation_detailInfoList">
										<li>제품을 유통할 수 있는지, 스토리에 작성한 내용이 적합한지 확인해요.</li>
										<li>심사 중 수정 요청 피드백을 받을 수 있고, 최종 제출 후 심사 완료까지 평균 <br>7일 걸려요.</li>
									</ul>
								</li>
								<li class = "Infomation_listItem">
									<span class = "Information_text">공개</span>
									<ul class = "Infomation_detailInfoList">
										<li>최종 승인 후 메이커가 공개 일정을 설정할 수 있어요.</li>
										<li>원하는 일정에 맞춰 바로 공개하거나 예약이 가능해요.</li>
									</ul>
								</li>
							</ol><!-- Infomation_processList -->
						</div><!-- Infomation_processBox -->
					</li><!-- Infomation_infoListItem -->
					<li class = "Infomation_infoListItem">
						<div class = "Infomation_subTitleBox">
							2) 프로젝트 유형
						</div>
						<p class = "Information_description">프로젝트 유형에 따라 환불과 정산 정책이 다르니 참고해 주세요.</p>
						<div class = "Infomation_categoryBox">
							<dl class = "Infomation_category">
								<dt class = "Infomation_term">
									펀딩
								</dt>
								<dd class = "Infomation_termDescription1">
									새로운 제품 · 서비스 · 콘텐츠를 소개해요.
									<br>
									개인의 기부 · 후원 활동을 위해 자금을 모을 수도 있어요.
								</dd>
							</dl>
							<em>VS</em>
							<dl class = "Infomation_category">
								<dt class = "Infomation_term">
									프리오더
								</dt>
								<dd class = "Infomation_termDescription2">
									유통된 제품이더라도 
									<br class = "info">
									<span class = "sub_term">국내단독, 특별 구성, 한정판</span>
									이라면
									<br>
									와디즈에서 소개해 더 많은 서포터를 만나요.
								</dd>
							</dl>
						</div>
					</li>
				</ul><!-- Infotmation_infoList -->
			</section><!-- Information_container -->
				<div class = "fundingIntroContainer_Btn">
					<a href = "pagethree"><button type = "button"><span>시작하기</span></button></a>
				</div>
		</div><!-- appLayout_container -->
	</div><!-- appLayoutContents -->
</div><!-- fundingProcess_container -->




<script>




</script>





































































<%@include file="../temp/footer.jsp"%>