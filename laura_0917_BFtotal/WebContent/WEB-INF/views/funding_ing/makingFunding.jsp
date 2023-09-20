<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/makingFunding.css">

<div class = "RegistrationProject_container">
	<section class = "KeyVisual_container">
		<div class = "KeyVisual_inner">
			<b class = "KeyVisual_inner_text1">
				<span style = "">라우라 메이커</span>
				<span class= "KeyVisual_inner_change_name">채지우</span>
				<span style = "font-weight: 500;">입니다</span>
			</b>
			<div class = "KeyVisual_textBox">
				<img src = "${rPath }/img/making_funding/upper.svg" class = "img_uppper1">
				<p class= "KeyVisual_makerIntroduce" style = "">
					소통과 피드백이 가능해 친밀한 브랜드 이미지를 얻었어요
				</p>
				<img src = "${rPath }/img/making_funding/upper.svg" class = "img_uppper2">
			</div>
			<!-- 슬라이드 쇼 -->
			<div class="swiper mySwiper">
			    <div class="swiper-wrapper">
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/barbi.png">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/help_png.jpg">
			      </div>
			      <div class="swiper-slide">
			       	<img src = "${rPath }/img/funding/TOMBOY.jpg">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/jpn.jpg">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/poster9.jpg">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/2012.jpg">
			      </div>
			    </div>
			   <div class="swiper-pagination"></div>
			 </div>
			 <!-- 슬라이드 쇼 끝 -->
			<p class = "KeyVisual_inner_info">
				라우라에서
				<span class = "KeyVisual_inner_info_text">
					<span class="count-num" data-count="530">0</span>
					<span>번째</span>
				</span>
				 <span>메이커가 되어보세요</span>
			</p>
			<%-- 0905_박형지: 로그인 전/후 이동 다르게 --%>
			<input type="hidden" name="email" id="email" value="${mvo.email }" >
			<!-- 로그인 전 -->
			<c:choose>
				<c:when test="${sessionScope.sessionID == null}">
					<a href="loginForm">
						<button class="gotoMakingFunding_Btn" type="button">
							<span class="Btn_text"> <span>프로젝트 만들기</span>
							</span>
						</button>
					</a>
				</c:when>
			</c:choose>
			<!-- 로그인 후 -->
			<c:choose>
				<c:when test="${sessionScope.sessionID != null}">
					<c:choose>
						<c:when test="${mvo.arstatus=='미인증' }">
							<button class="gotoMakingFunding_Btn" id="openModalBtn"
							type="button">
							<span class="Btn_text"> <span>프로젝트 만들기</span>
							</span>
						</button>
						</c:when>
					</c:choose>
					
					<c:choose>
						<c:when test="${mvo.arstatus=='인증' }">
							<a href="pagetwo">
								<button class="gotoMakingFunding_Btn" type="button">
									<span class="Btn_text"> <span>프로젝트 만들기</span>
									</span>
								</button>
							</a>
						</c:when>
					</c:choose>	
				</c:when>
			</c:choose>
			<%-- <c:choose>
				<c:when test="${sessionScope.sessionID != null}">
					<button class="gotoMakingFunding_Btn" id="openModalBtn"
						type="button">
						<span class="Btn_text"> <span>프로젝트 만들기</span>
						</span>
					</button>
				</c:when>
			</c:choose> --%>
			
		</div>
		<!-- KeyVisual_inner -->
	</section>
	<!-- KeyVisual_container -->
	
	<!-- 모달 창 -->
	<div id="myModal" class="modal">
	    <div class="modal-content" style="height:660px; overflow: auto">
	        <span class="close">&times;</span>
	        <h2>프로젝트 메이커 인증하기</h2>
	        <p>프로젝트를 진행하시려면 메이커 인증 절차를 거쳐야 합니다.</p>
	        <form action="updateart" method="post" enctype="multipart/form-data" id = "artistForm" name = "artistForm"><!-- artistform 이 부분 [펀딩] 컨트롤러에 있음 -->
	        	<input type="hidden" name="num" id="num" value="${sessionScope.sessionNO }">
				<input type="hidden" id="arstatus" name="arstatus">
	        	<!-- img 체크 -->
		          <div class="uploadImg">
		          	<span>감독 프로필 사진</span>
		          	<span>*</span>
		             <div class="directorImgUpload">
		                 <img src="${rPath}/img/making_funding/profile_img.jpg" id="imgx">
		             </div>
		             <div class="group-img">
		             	<div class="filebox">
						  <input type="hidden" name="arprofilepic"  id="arprofilepic">
						  <label for="arprfile">업로드</label> 
						  <input type="file" id="arprfile" name="arprfile" class="upload-hidden">
						</div>
		             </div>
		          </div><!-- uploadImg -->
		          <div class = "director_produce">
		          	<span>감독 소개글</span>
		          	<span>*</span>
		          	<div class = "director_textarea">
		          		<textarea name="arprofile"></textarea>
		          	</div>
		          </div>
		          <div class = "director_address">
		          	<span>주소</span>
		          	<span>*</span>
		          	<div>
		          		<input type = "text" id = "director_addr" name="addr">
		          	</div>
		         </div>
		         <div class = "director_account">
			        <span>은행 계좌번호</span>
			        <span>*</span>
			        	<div class = "bankSelect-menu">
							<select id="bankSelectBox">
								<option value="option1">국민은행</option>
								<option value="option2">하나은행</option>
								<option value="option3">신한은행</option>
								<option value="option4">기업은행</option>
								<option value="option5">농협은행</option>
								<option value="option6">씨티은행</option>
								<option value="option7">카카오뱅크</option>
								<option value="option8">토스뱅크</option>
							</select>
						</div>
			          	<div>
			          		<input type = "text" id = "director_account" name="bankaccount" placeholder="계좌번호는 - 빼고 입력해주세요">
			          	</div>
		         	</div>
		         <div class = "artist_certificationImg">
		         	<span>예술인 인증서 첨부서류</span>
		         	<span>*</span>
		         	<div class = "artist_document">
		         		<button class = "document-certif">
		         			<span class="material-symbols-outlined">add_circle</span>
		         		</button>
		         		서류를 첨부해주세요
		         	</div>
		         </div>
		         <div class = "formBtn">
		         	<!-- <a href = "pagetwo"> -->
		         		<button type = "submit"> <!-- submit으로 수정해야함!!!!!!!! -->
		         			<span>제출</span>
		         		</button>
		         	<!-- </a> -->
		         	<button type = "button" id = "button_close"><span>닫기</span></button>
		         </div>
	        </form><!-- artistForm -->
	    </div><!-- modal-content -->
	</div><!-- modal -->

	<div>
		<div class= "ServiceInfo_inner">
			<h3 class="ServiceInfo_inner_text">라우라에서 시작과 성장을 함께 하세요</h3>
			<p class= "ServiceInfo_description">
				이미 많은 메이커가 라우라를 경험했어요
			</p>
			<ul class="ServiceInfo_list">
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/gift.svg">
						<dt class = "listItem_title">펀딩</dt>
						<dd>성공하면 제품 발송 전<br>정산돼요</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/cart.svg">
						<dt class = "listItem_title" style = "">프리오더</dt>
						<dd>예약한 수량만큼만 제작해<br>재고 부담을 덜어요</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/store.svg">
						<dt class = "listItem_title">스토어</dt>
						<dd>상시 판매로 꾸준한 매출을<br>올릴 수 있어요</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/traders.svg">
						<dt class = "listItem_title">트레이더스</dt>
						<dd>유통채널을 확장해<br>지속적인 성장을 도와요</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/my.svg">
						<dt class = "listItem_title">메이커페이지</dt>
						<dd>설문 조사와 새소식으로<br>꾸준히 소통해요</dd>
					</dl>
				</li>
			</ul><!-- ServiceInfo_list -->
		</div><!-- ServiceInfo_inner -->
	</div><!-- class명 없는 div -->
	<div class = "ServiceProvide_container">
		<div class= "ServiceProvide_inner">
			<h3 class = "ServiceProvide_title">라우라가 도와드릴게요</h3>
			<p class = "ServiceProvide_description">
				라우라에서는 콘텐츠 제작부터 광고까지 프로젝트 성공을 위한 메이커 서비스를 제공하고 있어요
			</p>
			<ul class="ServiceInfo_list" >
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. 라우라 강의 듣고 싶어요</dt>
						<dd style = "font-weight: bold;">라우라 스쿨</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">와디즈 전문가가 진행하는 온오프라인 강의를 직접 들을 수 있어요</dd>
						<img src = "${rPath }/img/making_funding/wadiz1.jpg">
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. 상세페이지 제작 도움받고 싶어요</dt>
						<dd style = "font-weight: bold;">스토리 제작 서비스</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">스토리 제작부터 제품 촬영까지, 검증된 전문가에게 맡겨보세요</dd>
						<img src = "${rPath }/img/making_funding/wadiz2.jpg">
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. 적극적으로 홍보하고 싶어요</dt>
						<dd style = "font-weight: bold;">광고 서비스</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">다양한 매체를 통한 내외부 타겟 광고로 더 많이 알릴 수 있어요</dd>
						<img src = "${rPath }/img/making_funding/wadiz3.jpg">
					</dl>
				</li>
				<li class = "ServiceInfo_listItem"
					style = "">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. 제품을 전시할 공간이 필요해요</dt>
						<dd style = "font-weight: bold;">공간 라우라</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">성수동 오프라인 공간 라우라에서 더 많은 팬들에게 직접 소개해보세요</dd>
						<img src = "${rPath }/img/making_funding/wadiz4.jpg">
					</dl>
				</li>
			</ul>
		</div>
	</div>
</div>



 <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      effect: "coverflow",
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: 3,
      loop: true, 
      slidesPerView: "auto",
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows: true,
      },
      pagination: {
        el: ".swiper-pagination",
      },
      autoplay: {
        delay: 2000, 
        disableOnInteraction: false,
      },
    });
    
  //회원수 카운팅
	$('.count-num').each(function() { 
		  var $this = $(this),
		      countTo = $this.attr('data-count');
		       
		  $({ countNum: $this.text()}).animate({
		    countNum: countTo 
		  },
		  {
		    duration: 3000, 
		    easing:'linear',
		    step: function() {
		      $this.text(Math.floor(this.countNum));
		    },
		    complete: function() { 
		      $this.text(this.countNum);
		    }
		  }); 
		});
    
    
 // 프로젝트 만들기 버튼과 모달 엘리먼트 가져오기
	const openModalBtn = document.getElementById('openModalBtn');
	const modal = document.getElementById('myModal');

	// 모달을 열기 위한 이벤트 핸들러 추가
	openModalBtn.addEventListener('click', function() {
		modal.style.display = 'block';
		// 모달이 열릴 때 body의 스크롤을 막음
		document.body.style.overflow = 'hidden';
	});

	// 모달의 x버튼 이벤트 핸들러 추가
	const closeBtn = modal.querySelector('.close');
	closeBtn.addEventListener('click', function() {
		modal.style.display = 'none';
		// 모달이 닫힐 때 body의 스크롤을 원래대로 돌림
		document.body.style.overflow = 'auto';
	});
	
	// 모달의 닫기 버튼 이벤트 핸들러 추가
	const close = document.getElementById('button_close');
	close.addEventListener('click', function() {
		modal.style.display = 'none';
		// 모달이 닫힐 때 body의 스크롤을 원래대로 돌림
		document.body.style.overflow = 'auto';
	});

	// 모달 외부 클릭 시 모달 닫기
	window.addEventListener('click', function(event) {
		if (event.target === modal) {
			modal.style.display = 'none';
			// 모달이 닫힐 때 body의 스크롤을 원래대로 돌림
			document.body.style.overflow = 'auto';
		}
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
		$('#arprfile').change(function() {
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