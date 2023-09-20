<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess4.css">

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
			</div><!-- border-line -->
		<div class = "appLayoutContents">
			<div class = "appLayout_container">
				<div class = "FundingLayout_contents">
					<div class = "FundingCatagory">
						<span>프로젝트 관리</span><span class="material-symbols-outlined">chevron_right</span><span>기본 정보</span>
					</div>
					<div class = "fundingIntroContainer">
						<strong class = "fundingIntroContainer_title">기본 정보</strong>
					</div><!-- fundingIntroContainer -->
						<form action="finsert" method="post" enctype="multipart/form-data" id="upform" class = "ProjectTypeFormContainer_form">
							<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
								<div class = "Scection_funStartDate">
									<div class = "funding_startdate_title">
										<h6>펀딩 시작일</h6>
									</div>
									<div class = "Section_funStartContent">
										<input type="date"class="" id="sdate" name="sdate" required="required">
									</div>
								</div>
								<!-- 펀딩 종료일 -->
								<div class = "Scection_funFinDate">
									<div class = "funding_findate_title">
										<h6>펀딩 마감일</h6>
									</div>
									<div class = "Section_funFinContent">
										<input type="date" class="" id="fdate" name="fdate" required="required">
									</div>
								</div>
								<!-- 펀딩 목표금액 설정 -->
								<div class = "Scection_fundingAim">
									<div class = "funding_findingAim_title">
										<h6>펀딩 목표금액 설정</h6>
									</div>
									<div class = "Section_fundingAim_cls">
										<input type="number" step="10000" class="" id="targetprice" placeholder="펀딩 목표 금액을 설정하세요" name="targetprice" pattern=".{2,30}" required="required">
									</div>
								</div>
								
								<!-- 펀딩 금액 선택 -->
								<div class = "Scection_funMoneySelect">
									<div class = "funding_funMoneySelect_title">
										<h6>펀딩 금액 선택</h6>
										<ul>
											<li>펀딩 금액 선택은 필수 입력칸이 아닙니다.</li>
											<li>펀딩 금액 설정의 기본값은 '자유롭게 펀딩하기'로 서포터가 금액을 자유롭게 정할 수 있습니다.</li>
											<li>펀딩금액 설정이 필요하다면 추가버튼을 눌러 최대 3개의 금액까지 설정 가능합니다.</li>
										</ul>
									</div>
									<div class="Scection_funMoneySelect_cls">
    									<input type="number" step="10000" class="" id="cost1" placeholder="펀딩 금액 단위를 선택해주세요" name="cost" pattern=".{2,30}">
									    <img src="${rPath}/img/making_funding/add.png" onclick="toggleHiddenInputs('cost1')">
									
									    <input type="number" step="10000" class="hidden" id="cost2" placeholder="펀딩 금액 단위를 선택해주세요" name="cost" pattern=".{2,30}" style="display: none;">
									    <input type="number" step="10000" class="hidden" id="cost3" placeholder="펀딩 금액 단위를 선택해주세요" name="cost" pattern=".{2,30}" style="display: none;">
									</div>
								</div>
							</form>
					<div class = "FundingDropdownMenu">
					
					</div>
					

				
					<div class = "fundingIntroContainer_Btn">
						<a href = "pagethree">
							<button type = "button"><span>저장하기</span></button>
						</a>
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
        event.target.style.fontWeight='bold';
    }
}

function handleMouseOut(event) {
    if (event.target.tagName === 'LI') {
        event.target.style.backgroundColor = '';
        event.target.style.boxShadow = '';
        event.target.style.color = 'black';
        event.target.style.fontWeight='';
    }
}

titleList.addEventListener('mouseover', handleHover);
titleList.addEventListener('mouseout', handleMouseOut);



//JavaScript를 사용하여 클릭 이벤트를 처리합니다.
document.getElementById('helpIcon').addEventListener('click', function() {
    var helpBox = document.getElementById('a');
    helpBox.style.display = (helpBox.style.display === 'block') ? 'none' : 'block';
});

//input 클릭 이벤트
document.getElementById('selectBox').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
});

document.getElementById('selectBox').addEventListener('blur', function(e) {
	this.style.borderColor='';
});

document.getElementById('funtitle').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
});

document.getElementById('funtitle').addEventListener('blur', function(e) {
	this.style.borderColor='';
});

document.getElementById('funpreview').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
});

document.getElementById('funpreview').addEventListener('blur', function(e) {
	this.style.borderColor='';
});

document.getElementById('uploadImg').addEventListener('click', function(e) {
	this.style.backgroundColor='#00c4c4';
	this.style.color='#fff';
});

document.getElementById('uploadImg').addEventListener('blur', function(e) {
	this.style.backgroundColor='';
	this.style.color='';
});
//-----------------------------imgfile check--------------------------------------------	
// 이미지 미리보기 함수 => javascript I/O 기능을 활용
function readURL(input){
   // 	input type="file" 의 주소를 가져온다.
   if(input.files && input.files[0]){
	// 자바스크립트 I/O 
	   var reader = new FileReader();
	// 리스너 
	reader.onload = function(e){
		//console.log("이벤트 발생:"+e.target.result);
		// <img src>선택자 , attr("속성명","값") -><img src="">
		$('#imgx').attr('src', e.target.result); // 이미지를 바이너리로 전달 
	}
	reader.readAsDataURL(input.files[0]);
   }
}

//jQuery 문법 - 축약형 
$(function () {
	 //jQuery 선택자
	// 대상선택자에서 변화를 감지하는 이벤트 : change()
	//#prfile : 파일업로드 속성을 선택자
	//$('선택자')
	$('#ex_filename').change(function() {
		// input type의 value 속성의 값 => C:\fakepath\c11.jpg
		//console.log($(this).val());
		if($(this).val().length > 0){
			readURL(this);
		}else{
			console.log("이미지 없음");
		}
	})
})

function toggleHiddenInputs(inputId) {
    var inputElement = document.getElementById(inputId);
    var siblingInputs = inputElement.parentNode.querySelectorAll('.hidden');
    
    for (var i = 0; i < siblingInputs.length; i++) {
        var siblingInput = siblingInputs[i];
        siblingInput.style.display = (siblingInput.style.display === 'none') ? 'block' : 'none';
    }
}


</script>











































































<%@include file="../temp/footer.jsp"%>