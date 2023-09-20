<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="${rPath}/css/find_idpwd.css">

    <div class="account-find">
    	<div class = "page-header">
    		<h2 class = "text">아이디·비밀번호 찾기</h2>
		        <div class="nav_tab" style = "">
		        	<ul>
		            	<li><a href="#" data-floor="1" class="active">아이디 찾기</a></li>
		            	<li><a href="#" data-floor="2">비밀번호 찾기</a></li>
		        	</ul>
		        </div>
        </div> <!-- page-header 끝!!-->
        
        
        <div class = "page-body">
        
       <!-- id찾기 -->
	      <div class="floor" id="f1">
	        <div class = "container">
	        	<div class = "hide_container">
	        	   <!-- text 칸 -->
				   <div class = "find_id">
					   <span>라우라는 이메일을 아이디로 사용합니다.<br>
							본인 명의의 핸드폰 번호를 입력해주세요.<br>
							가입여부를 확인해드립니다.
						</span>
					</div>
					<!-- 전화번호 입력 칸 -->
					<div class = "find_id_input">
						<input type="tel" name="tel" id="tel" placeholder="전화번호 입력">
					</div> 
					<!-- 오류메세지  -->
					<div id="telErrorMessage" style="color: #fe5147; font-size: 12px; display: none; text-align: left; margin-top: 5px;">'-'을 제외한 숫자만 입력해주세요.</div>
					<!-- 확인 버튼 -->
					<div class="submit">
	              		<input type="button" class = "button" id="telChkBtn" value="확인">
	            	</div>	
	            </div> <!-- hide_container -->
	            
	            <!-- 회원일 경우 뜨는 알림창 (페이지 변경 없이) -->
				<div id="idNotification" class="id-notification">
	            	<h3 id="username"></h3>
	            	<span>회원으로 등록된 이메일 아이디입니다. <br>
					해당 이메일로 로그인하고 와디즈를 이용하세요!</span>
					<div class="submit2">
	              		<a href = "loginForm"><input type="button" class = "button" id="telChkBtn" value="로그인"></a>
	              		<input type="button" class = "button2" id="telChkBtn" value="다시 확인">
	            	</div>	
	        	</div> <!-- id-notification -->
	        	
			</div>  <!-- container -->	  
	   </div> <!-- floor -->
	   <!-- id 찾기 끝!!!!! -->
	        
	        
	        
	        <!-- pwd찾기 -->
	        <div class="floor" id="f2">
	        	<div class = "container" style="">
	        	   <!-- text 칸 -->
				   <div class = "find_id">
					   <span>가입하셨던 이메일 계정을 입력하시면, <br>
							비밀번호를 새로 만들 수 있는 링크를 이메일로 <br>
							발송해드립니다. <br>
						</span>
					</div>
					<!-- 전화번호 입력 칸 -->
					<div class = "find_id_input" style = "">
						<input type="tel" name="tel" id="tel" placeholder="이메일 입력">
					</div> 
					<!-- 오류메세지  -->
					<div id="telErrorMessage" style="color: #fe5147; font-size: 12px; display: none; text-align: left; margin-top: 5px;">'-'을 제외한 숫자만 입력해주세요.</div>
					<!-- 확인 버튼 -->
					<div class="submit" style = "">
	              		<input type="button" class = "button" id="telChkBtn" value="확인">
	            	</div>
				</div>        
	        </div> 
        </div>
    </div> <!-- account-find 끝!! -->


 	
<script>
<!-- 페이지 이동 없이 내용 변경하는 텝 -->
        $(function() {
            $('.floor:first').show(); // 첫번째 tab을 보여준다고 선언
            $('.nav_tab a').click(function(){ // nav_tab이라는 클래스 안에 a태그를 클릭하면 작동한다고 선언
                $('.nav_tab a').removeClass('active'); // nav_tab이라는 클래스 안에 a태그를 클릭하면 기존 active라는 클래스 삭제
                $(this).addClass('active'); // nav_tab이라는 클래스 안에 a태그를 클릭하면 클릭한곳에 active라는 클래스 생성
                $('.floor').hide(); // 다른 floor라는 클래스를 가진 요소들을 hide(감춘다)
                $('#f' + $(this).data('floor')).show(); // 클릭한 f + this에 floor만 보여준다
            });
        });


        
<!-- 핸드폰 번호 입력시 '-' 입력할 때 오류 나게 하는 js -->
	var telInput = document.getElementById("tel");
	var telErrorMessage = document.getElementById("telErrorMessage");

	telInput.addEventListener("input", function() {
	    var inputValue = telInput.value;
	    var numericValue = inputValue.replace(/-/g, ''); // '-' 제거한 숫자만 추출
	    
	    if (inputValue !== numericValue) {
	        telErrorMessage.style.display = "block"; // 오류 메시지 표시
	        telInput.style.borderColor = "#fe5147";
	        
	    } else {
	        telErrorMessage.style.display = "none"; // 오류 메시지 숨김
	        telErrorMessage.style.borderColor = "";
	    }
	}); 
        

	
//--------------------------클릭시 글씨 색상 변하는 기능--------------------------------------
	// 모든 링크와 해당 li 요소들을 가져옵니다.
    const tabLinks = document.querySelectorAll('.nav_tab a');
    const tabListItems = document.querySelectorAll('.nav_tab li');

    // 링크를 클릭할 때 실행될 함수
    tabLinks.forEach((link, index) => {
        link.addEventListener('click', function(event) {
            // 모든 li 요소의 border-bottom 스타일을 초기화합니다.
        	tabLinks.forEach(link => {
                link.classList.remove('active');
            });

            
            link.classList.add('active');
        });
    });
	
   
//-----------------------------tel check--------------------------------------------	
		document.getElementById("telChkBtn").addEventListener("click", function() {
	    var phoneNumber = document.getElementById("tel").value;
	    
	    
	    var isRegistered = checkPhoneNumberRegistration(phoneNumber); 
	    
	    if (isRegistered) {
	    	var username = getUsername(phoneNumber); 
            $('#username').text(username);
            $('#idNotification').show();
            $('.hide_container').hide();
 
	    } else {
	    	 $('#idNotification').hide();
	         $('.hide_container').show();
	        alert("가입되지 않은 번호입니다."); 
	    }
	});


// ---------------------------------전화번호 입력 후 가입 여부 확인하는 기능---------------------------------------
		function checkPhoneNumberRegistration(phoneNumber) {
		    var registeredNumbers = ["01055538215","1"]; // !!!!!수정해야 하는 부분!!!!!
		    
		    return registeredNumbers.includes(phoneNumber);
		}	


//-------------------------다시 확인 누르면 전화번호 입력칸으로 돌아가는 기능------------------------------------
	 
    document.querySelector('.button2').addEventListener('click', function () {
        // "hide_container"의 스타일을 보이게 설정
        document.querySelector('.hide_container').style.display = 'block';
        // "idNotification"의 스타일을 숨김으로 설정
        document.querySelector('#idNotification').style.display = 'none';
    });


		  

// ------------------------회원일 경우 해당 번호의 아이디를 가져오는 기능--------------------------------
	function getUsername(phoneNumber) {
	    
	    // 반환값: 아이디 문자열
	    return 'example_username@naver.com'; // !!!!!수정해야 하는 부분!!!!!
	}
        
   

</script>
<%@include file="../temp/footer.jsp"%>



































