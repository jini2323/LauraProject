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
                <input type="password" name="pwd" id="pwd" placeholder="8���̻� �Է�">
            </div>
            <div class="login_etc">
                <div class="checkbox">
                <input type="checkbox" name="logSession" id="logSession"> �α��� ���� ����
                </div>
                <div class="forgot_pw">
                <a href="findID">���̵� ã��</a>
                <span>��</span>
                <a href="findPWD">��й�ȣ ã��</a>
            	</div>
            </div>
            
            <div class="login_btn">
              <input type="submit" value="�α���">
            </div>
            <div class="to_join">
                <a href="memForm">���� ȸ���� �ƴѰ���?</a>
             </div>
            </div> 
            
             </form>
        </div>
    </div>
   			
<script>



	window.onload=function(){
		document.querySelector("#emailChkBtn").onclick=function(e){
			//document.getElementById("target").innerHTML="��밡���� ���̵� �Դϴ�.";
			//�������� ���� ��� (insert.jsp �� ���°��� ���� : �񵿱�� )
			e.preventDefault();
		//���̹�Ƽ�� �� �����ϴ� �κ� ** �׽�Ʈ�� xman���� �ϱ� 
			let param = "email="+document.getElementById("email").value;
			
			//���⼭ send + ctrl space �������� ���� ����
			sendRequest( "<%=application.getContextPath()%>/idcheck" , param, res, "get");
		};
		
		function res() {
		if(xhr.readyState ===4){
			if(xhr.status ===200){
				let idCnt = parseInt(xhr.responseText);
				//idCnt === 0 �̰� �۵��� ���ϴ� ����? 
				//console.log(idCnt+":"+typeof(idCnt));=> parseInt����� 
				
				let msg ="";
				if(idCnt === 0){
					msg="��� ������ ���̵� �Դϴ�.";
					document.getElementById("target").style.backgroundColor='orange';
				}else{
					msg="��� ���� ���̵� �Դϴ�.";
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
			//document.getElementById("target").innerHTML="��밡���� ���̵� �Դϴ�.";
			//�������� ���� ��� (insert.jsp �� ���°��� ���� : �񵿱�� )
			e.preventDefault();
		//���̹�Ƽ�� �� �����ϴ� �κ� ** �׽�Ʈ�� xman���� �ϱ� 
			let param = "email="+document.getElementById("email").value;
			
			//���⼭ send + ctrl space �������� ���� ����
			sendRequest( "<%=application.getContextPath()%>/idcheck" , param, res, "get");
		};
		
		function res() {
		if(xhr.readyState ===4){
			if(xhr.status ===200){
				let idCnt = parseInt(xhr.responseText);
				//idCnt === 0 �̰� �۵��� ���ϴ� ����? 
				//console.log(idCnt+":"+typeof(idCnt));=> parseInt����� 
				
				let msg ="";
				if(idCnt === 0){
					msg="��� ������ ���̵� �Դϴ�.";
					document.getElementById("target").style.backgroundColor='orange';
				}else{
					msg="��� ���� ���̵� �Դϴ�.";
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
			
			//Ajax ����� ĳ�� ����� ����
			$.ajaxSetup({
				cache:false
			});
			//Ajax ó��
			let path = "<%=application.getContextPath()%>/idcheck?id="+idv;
			$.ajax({
				url:path,
				success:function(resData){ //callbac �Լ��� xhr.responseText ��ģ ����
					let idCnt = parseInt(resData);
					let msg = "";
					if (idCnt === 0) {
						msg = "�����Ϸ�!";
						$('#target2').css({"backgroundColor":"red", "color":"blue" });
					} else {
						msg = "�̹� �ִ� ��ȣ �Դϴ�.!";
						
						$('#target2').css("backgroundColor","red");
						$('#target2').css("color","white");
					}
					$('#target2').html(msg);
					
				}
			});
		});
	});
	
	
	
	
	
	



	//window.onload���� ���̴� dom�� ����ϴٰ� ���� �������ִ� �̺�Ʈ
	//������ : id, class, element
	//�������� : $(document) �����̴� 


	
	
</script>


    <%@include file="../temp/footer.jsp" %>