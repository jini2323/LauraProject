<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess2.css">



	<div class = "AppLayout_Container">
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
						<ul class="sideMenu_list">
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
			</div>
		<div class = "appLayoutContents">
			<div class = "appLayout_container">
				<div class = "FundingLayout_contents">
					<div class = "fundingIntroContainer">
						<strong class = "fundingIntroContainer_title">프로젝트 관리</strong>
						<p class = "fundingIntroContainer_description">프로젝트를 공개하는 데 필요한 내용을 작성해 주세요.</p>
					</div><!-- fundingIntroContainer -->
					<div class = "FundingStatus_container">
						<div class = "FundingStatus_label">
							프로젝트 준비 상태
						</div>
						<div class = "FundingStatus_statusView">
							<div class = FundingStatus_icon__1Xrqx yellow"></div>
							작성 중
						</div>
						<div class = "FundingStatus_guide">
							<p style="margin:0px;">아래의 필수 항목들이 모두 작성 완료 상태로 바뀌면 [제출하기]를 누를 수 있어요.</p>
						</div>
					</div>
					<div>
						<div class = "PageMenuList_card">
							<div class = "PageMenuList_container">
								<div class = "PageMenuList">
									<div class = "PageMenuList_name">
										프로젝트 정보
									</div>
									<div class = "PageMenuList_status">
										작성 전
									</div>
								</div>
								<a class = "PageMenuList_buttonWrapper" href = "pagefour">
									<button type = "button">작성하기</button>
								</a>
							</div>
						</div><!-- PageMenuList_card -->
						<div class = "PageMenuList_card">
							<div class = "PageMenuList_container">
								<div class = "PageMenuList">
									<div class = "PageMenuList_name">
										기본 정보
									</div>
									<div class = "PageMenuList_status">
										작성 전
									</div>
								</div>
								<a class = "PageMenuList_buttonWrapper" href = "pagefive">
									<button type = "button">작성하기</button>
								</a>
							</div>
						</div><!-- PageMenuList_card -->
						<div class = "PageMenuList_card">
							<div class = "PageMenuList_container">
								<div class = "PageMenuList">
									<div class = "PageMenuList_name">
										스토리 작성
									</div>
									<div class = "PageMenuList_status">
										작성 전
									</div>
								</div>
								<a class = "PageMenuList_buttonWrapper" href = "pagesix">
									<button type = "button">작성하기</button>
								</a>
							</div>
						</div><!-- PageMenuList_card -->
					</div>
				
					<div class = "fundingIntroContainer_Btn">
						<button type = "button"><span>제출하기</span></button>
					</div>
				</div><!-- FundingLayout_contents -->
				<div class = "FundingLayout_guideWrapper">
					<div class = "FundingBanner_Notice">
						<div class = "BannerText">
							<p style = "margin-bottom:0px;">프로젝트 시작하기 막막하다면 </p>
							<span>공지사항 확인하기</span>	
						</div>
						<img src = "${rPath }/img/making_funding/post-it.png">			
					</div>
					<div class = "FundingBanner_Notice2">
						<div class = "BannerText">
							<p style = "margin-bottom:0px;">프로젝트 시작하기 막막하다면 </p>
							<span>공지사항 확인하기</span>	
						</div>
						<img src = "${rPath }/img/making_funding/post-it.png">			
					</div>
					<div class = "FundingBanner_Notice3">
						<div class = "BannerText">
							<p style = "margin-bottom:0px;">프로젝트 시작하기 막막하다면 </p>
							<span>공지사항 확인하기</span>	
						</div>
						<img src = "${rPath }/img/making_funding/post-it.png">			
					</div>
				</div><!-- FundingLayout_guideWrapper -->
			</div><!-- appLayout_container -->
		</div><!-- appLayoutContents -->
	</div><!-- fundingProcess_container -->
</div><!-- AppLayout_Container -->


<script>

const titleList = document.querySelector('.sideMenu_list');

function handleHover(event) {
    if (event.target.tagName === 'LI') {
        event.target.style.backgroundColor = '#fff';
        event.target.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.2)';
        event.target.style.color = '#00b2b2';
    }
}

function handleMouseOut(event) {
    if (event.target.tagName === 'LI') {
        event.target.style.backgroundColor = '';
        event.target.style.boxShadow = '';
        event.target.style.color = 'black';
    }
}

titleList.addEventListener('mouseover', handleHover);
titleList.addEventListener('mouseout', handleMouseOut);

</script>











































































<%@include file="../temp/footer.jsp"%>