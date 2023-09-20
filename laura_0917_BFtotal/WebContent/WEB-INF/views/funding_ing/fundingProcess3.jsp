<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess3.css">

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
						<span>프로젝트 관리</span><span class="material-symbols-outlined">chevron_right</span><span>프로젝트 정보</span>
					</div>
					<div class = "fundingIntroContainer">
						<strong class = "fundingIntroContainer_title">프로젝트 정보</strong>
					</div><!-- fundingIntroContainer -->
						<form action="finsert" method="post" enctype="multipart/form-data" id="upform" class = "ProjectTypeFormContainer_form">
							<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
								<div class = "section_catagory">
									<div class = "Section_header">
										<h6>카테고리</h6>
									</div>
									<div class = "Section_content">
										<div class = "select-menu">
							      			<select id="selectBox" name="funcategory" required="required">
										        <option value="액션">액션</option>
										        <option value="공상과학(SF)">공상과학(SF)</option>
										        <option value="스릴러">스릴러</option>
										        <option value="로맨스/멜로">로맨스/멜로</option>
										        <option value="코미디">코미디</option>
										        <option value="애니메이션">애니메이션</option>
										         <option value="기타">기타</option>
										    </select>
										</div>
									</div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class = "section_title">
									<div class= "Section_header">
										<h6>프로젝트 제목</h6>
									</div>
									<div class = "Section_title_cls">
										<input type="text" class="" id="funtitle" placeholder="제목 입력을 입력해주세요" name="funtitle" maxlength="100" required="required" pattern=".{2,50}">
									</div>
								</div>
								<!-- 프로젝트 프리뷰 -->
								<div class = "Section_preview" id="Section_preview">
									<div class= "Section_header">
										<h6>프로젝트 프리뷰</h6>&nbsp;&nbsp;<span class="material-symbols-outlined" id="helpIcon">help</span>
									</div>
									<div id="a">포스터 하단에 간략하게 들어갈 프리뷰를 50자 내로 작성하시면 됩니다.</div>
									<input type="text" name="funpreview" id="funpreview" placeholder="프리뷰를 입력해주세요" pattern=".{2,50}" required="required">
								</div>
								<!-- 프로젝트 포스터 -->
								<div class = "Section_poster">
									<input type="hidden" name="postimgn" id="postimgn">
									<div class= "Section_header">
										<h6>프로젝트 메인 포스터</h6>
									</div>
									<div class="directorImgUpload">
		                 				<img src="${rPath}/img/making_funding/noImg.jpg" id="imgx">
		            				 </div>
						             <div class="group-img">
						             	<div class="filebox">
										  <label for="ex_filename" id = "uploadImg">업로드</label> 
										  <input type="file" id="ex_filename" class="upload-hidden"> 
										</div>
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
	this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
});

document.getElementById('selectBox').addEventListener('blur', function(e) {
	this.style.borderColor='';
	this.style.boxShadow ='';
});

document.getElementById('funtitle').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
	this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
});

document.getElementById('funtitle').addEventListener('blur', function(e) {
	this.style.borderColor='';
	this.style.boxShadow ='';
});

document.getElementById('funpreview').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
	this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
});

document.getElementById('funpreview').addEventListener('blur', function(e) {
	this.style.borderColor='';
	this.style.boxShadow ='';
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

</script>






<%@include file="../temp/footer.jsp"%>