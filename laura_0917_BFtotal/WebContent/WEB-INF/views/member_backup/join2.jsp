<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/login.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>
<div class="wrap">
        <div class="login_in">
             <form action="loginProcess" method="post" id="loginInfo" autocomplete="on">
            <div class="login_info">
            <h2></h2>
            <div class="login_simple">
            
            <li><a href="https://accounts.google.com/InteractiveLogin/identifier?elo=1&ifkv=Af_xneFiEINhIsWJTK0vNyqu91p2q3U0En4hasiWh8p-lxONHZnmjo8glfSmg0W-GYA8PTBGKTDsQA&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="fa-brands fa-google"></i></a></li>
            <li><a href="https://nid.naver.com/nidlogin.login?mode=form&url=https://www.naver.com/"><i class="fa-sharp fa-solid fa-n"></i></a></li>
            <li><a href="https://accounts.kakao.com/login/?continue=https%3A%2F%2Fdevelopers.kakao.com%2Flogin%3Fcontinue%3D%252Fconsole%252Fapp&lang=ko#login"><i class="fa-brands fa-kickstarter-k"></i></a></li>
            
            </div>
           <div id="reip"> 
           <input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
           </div>
           
            <div class="login_email">
                <input type="email" name="email" id="email" placeholder="Email">
            </div>
            
            
            <div class="login_pw">
                <input type="password" name="pwd" id="pwd" placeholder="8자이상 입력">
            </div>
            <div class="login_etc">
                <div class="checkbox">
                <input type="checkbox" name="logSession" id="logSession"> 로그인 상태 유지
                </div>
                <div class="forgot_pw">
                <a href="findID">아이디 찾기</a>
                <span>｜</span>
                <a href="findPWD">비밀번호 찾기</a>
            	</div>
            </div>
            
            <div class="login_btn">
              <input type="submit" value="로그인">
            </div>
            <div class="to_join">
                <a href="memForm">아직 회원이 아닌가요?</a>
             </div>
            </div> 
            
             </form>
        </div>
    </div>
   			
<script>



	window.onload=function(){
		document.querySelector("#emailChkBtn").onclick=function(e){
			//document.getElementById("target").innerHTML="사용가능한 아이디 입니다.";
			//폼전송을 막는 기능 (insert.jsp 로 가는것을 막게 : 비동기식 )
			e.preventDefault();
		//마이바티스 후 수정하는 부분 ** 테스트는 xman으로 하기 
			let param = "email="+document.getElementById("email").value;
			
			//여기서 send + ctrl space 눌렀을때 뭐가 떠야
			sendRequest( "<%=application.getContextPath()%>/idcheck" , param, res, "get");
		};
		
		function res() {
		if(xhr.readyState ===4){
			if(xhr.status ===200){
				let idCnt = parseInt(xhr.responseText);
				//idCnt === 0 이게 작동이 안하는 이유? 
				//console.log(idCnt+":"+typeof(idCnt));=> parseInt해줘야 
				
				let msg ="";
				if(idCnt === 0){
					msg="사용 가능한 아이디 입니다.";
					document.getElementById("target").style.backgroundColor='orange';
				}else{
					msg="사용 중인 아이디 입니다.";
					document.getElementById("target").style.backgroundColor='red';
					document.getElementById("target").style.color='white';
				}
				document.getElementById("target").innerHTML=msg;
			}
		}
	}
	};

	<%-- 
	window.onload=function(){
		document.querySelector("#nnameChkBtn").onclick=function(e){
			//document.getElementById("target").innerHTML="사용가능한 아이디 입니다.";
			//폼전송을 막는 기능 (insert.jsp 로 가는것을 막게 : 비동기식 )
			e.preventDefault();
		//마이바티스 후 수정하는 부분 ** 테스트는 xman으로 하기 
			let param = "email="+document.getElementById("email").value;
			
			//여기서 send + ctrl space 눌렀을때 뭐가 떠야
			sendRequest( "<%=application.getContextPath()%>/idcheck" , param, res, "get");
		};
		
		function res() {
		if(xhr.readyState ===4){
			if(xhr.status ===200){
				let idCnt = parseInt(xhr.responseText);
				//idCnt === 0 이게 작동이 안하는 이유? 
				//console.log(idCnt+":"+typeof(idCnt));=> parseInt해줘야 
				
				let msg ="";
				if(idCnt === 0){
					msg="사용 가능한 아이디 입니다.";
					document.getElementById("target").style.backgroundColor='orange';
				}else{
					msg="사용 중인 아이디 입니다.";
					document.getElementById("target").style.backgroundColor='red';
					document.getElementById("target").style.color='white';
				}
				document.getElementById("target").innerHTML=msg;
			}
		}
	}
	};
 --%>
	
	
	
	
	
	
	
	
	
	
	$(function() {
		$('#telChkBtn').click(function(e) {
			alert("Test");
			e.preventDefault();
			let idv = $('#tel').val();
			
			//Ajax 통신의 캐시 기능을 삭제
			$.ajaxSetup({
				cache:false
			});
			//Ajax 처리
			let path = "<%=application.getContextPath()%>/idcheck?id="+idv;
			$.ajax({
				url:path,
				success:function(resData){ //callbac 함수인 xhr.responseText 합친 개념
					let idCnt = parseInt(resData);
					let msg = "";
					if (idCnt === 0) {
						msg = "인증완료!";
						$('#target2').css({"backgroundColor":"red", "color":"blue" });
					} else {
						msg = "이미 있는 번호 입니다.!";
						
						$('#target2').css("backgroundColor","red");
						$('#target2').css("color","white");
					}
					$('#target2').html(msg);
					
				}
			});
		});
	});
	
	
	
	
	
	



	//window.onload와의 차이는 dom만 대시하다가 실행 감지해주는 이벤트
	//선택자 : id, class, element
	//제이쿼리 : $(document) 형식이다 


	
	
</script>


    <%@include file="../temp/footer.jsp" %>