<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>


   <div class="join">
       <form action="joinComplete" method="post" id="loginInfo" autocomplete="on">
           <div class="join_info">
            	<h2>간편가입</h2>
            		<div class="join_simple">
			            <li><a href=""><i class="fa-brands fa-google"></i></a></li>
			            <li><a href=""><i class="fa-sharp fa-solid fa-n"></i></a></li>
			            <li><a href=""><i class="fa-brands fa-kickstarter-k"></i></a></li>
		            </div>
            			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
		            <div class="join_email">
		                <input type="email" name="email" id="email" placeholder="Email">
		                <button type="button" class="btn btn-primary" id="emailChkBtn">중복체크</button>
		                <br>
						<span id="target"></span>
		            </div>
		             <div class="join_name">
		                <input type="text" name="name" id="name" placeholder="이름을 입력하세요">
		            </div>
	             	<div class="join_sex" style = "display: flex;">
		             	<p>성별을 선택해주세요</p>
		                <input type="radio" name="sex" id="sex" value = "여자">여자
		                <input type="radio" name="sex" id="sex" value = "남자">남자
	            	</div>
	            	<div class="join_birth">
		                <input type="date" name="birth" id = "birth">
		            </div>
		             <div class="join_nname">
		                <input type="text" name="nname" id="nname" placeholder="닉네임을 입력하세요">
		                <button type="button" class="btn btn-primary" id="nnameChkBtn">중복체크</button>
		            </div>
		            <div class="join_pw">
		                <input type="password" name="pwd" id="pwd" placeholder="8자이상 입력">
		                <input type="password" name="pwd2" id="pwd2" placeholder="비밀번호 확인">
		            </div>
		            <div class="join_tel">
		            	<input type="tel" name="tel" id="tel" placeholder="번호만 입력해주세요. - 제외">
		            	<button type="button" class="btn btn-primary" id="telChkBtn">인증하기</button>
		            	 <br>
		            	<span id="target2"></span>
		            </div>
		            <div class="submit">
		              <input type="submit" value="가입">
		            </div>
		            <div class="to_join">
		                <a href="loginForm">이미 가입하셨나요?</a>
		             </div>
            </div> 
        </form>
    </div> <!-- join -->
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