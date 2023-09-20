<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/memberHead.jsp" %>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/joinForm.css">

<div class="join-wrap">
        <div class="join_in">
        	<form action="joinComplete" method="post" enctype="multipart/form-data" id="loginInfo" autocomplete="on">
	           	<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
	           	<h2 style = "">ȸ������</h2>
	           	
	           	<!-- Join Form -->
	           	<div class = "basic-info" style = "margin:70px auto;">
		           	<h5 style = "font-weight: bold;">�⺻ ���� �Է�</h5>
		           	
		           	<!-- email üũ -->
		            <div class="join_email mb20">
			            <div class = "text-box">
			            	<span>�̸���</span>
			             </div>	
		             <div class = "input-box">
		                <input type="text" id = "email-box" name="email" id="email" placeholder = "�̸��� ����" style = "">
		                <button type="button" class="button" id="emailChkBtn">�ߺ�üũ</button>
		                <br>
						<span id="target"></span>
							<div id="messageBox" class="message-box">
							  <p id="errorMessage" class="error-message"></p>
							</div>
						</div>
		            </div>
		           
		            <!-- pwd üũ -->
		            <div class="join_pw mb20">
			            <div class = "text-box">
			            	<span>��й�ȣ</span>
			             </div>	
			            <div class = "input-box" style = "">
			                <input type="password" name="pwd" id="pwd" placeholder="��й�ȣ �Է�" style = "">
			                
			                <input type="password" name="pwd2" id="pwd2" placeholder="��й�ȣ Ȯ��" style = ""> 
			                
			             </div>
			             <span id = "passwordErrorMessage2"></span>
			             <span id = "passwordErrorMessage"></span>
			             
		            </div>
	            </div> 
	            
	            
	         
	            
	            <div class = "personal-info">
		            <h5 style = "font-weight: bold;">���� ���� �Է�</h5>
		          
		           	<!-- name üũ -->
		            <div class="join_name mb20">
		            	<div class = "text-box">
			            	<span>�̸�</span>
			             </div>	
			             <div class = "input-box">
			                <input type="text" name="name" id="name" placeholder="�̸� �Է�" style = "">
		                </div>
		            </div>
		            
		            <!-- nickname üũ -->
		             <div class="join_nname mb20">
			             <div class = "text-box">
				           <span>�г���</span>
				         </div>
						<div class = "input-box">
			                <input type="text" name="nickname" id="nickname" placeholder="�г��� �Է�" style = "text-indent: 7px; border: 1px solid #a4a4a4; border-radius: 4px;">
			                <button type="button" class="button" id="nnameChkBtn">�ߺ�üũ</button>
			                <br>
			            	<span id="target2"></span>
		            	</div>
		            </div>
		            
		            <!-- img üũ -->
		            <div class="join_img mb20">
		               <div class="group-img">
		               	
		                   <span style = "color: red; font-size: 13px; margin-right: 5px;">* (����)</span>
		                   <span>������ �̹��� ���</span>
		                   <input type="hidden" name="profilepic" id="profilepic">
						   <input type="file" class="form-control" id="prfile" name="prfile">
		               </div>
		              <div class="group">
		                   <span class="highlight"></span>
		                   <span class="bar"></span>
		                   <img src="${rPath}/img/profile-img/profile.png" id="imgx" style="width: 230px; border: dotted 1px;">
		              </div>
		            </div>
		            
		             <!-- birth üũ -->
		            <div class = "join_birth mb20">
		            	<div class = "text-box">
		            		<span>�������</span>
		            	</div>
		            	<div class = "input-box">
		            		<input type="date" name="birthday" id="birthday" style =" border-radius: 4px; border: 1px solid #a4a4a4; text-indent: 7px;">
		            	</div>
		            </div>
		            
		             <!-- gender üũ -->
		             <div class="join_gender mb20">
		             	<div class = "text-box">
		             		<span>������ �������ּ���</span>
		             	</div>
		             	<div class = "radio-box">
		                	<input type="radio" name="memgender" id="memgenderW" value = "����">����
		                	<input type="radio" name="memgender" id="memgenderM" value = "����">����
		                </div>
		            </div>
	
		            
		            <!-- tel üũ -->
		            <div class="join_tel mb20">
		            	<div class = "text-box">
		            		<span>�ڵ��� ��ȣ</span>
		            	</div>
		            	<div class = "input-box">
			            	<input type="tel" name="tel" id="tel" placeholder="��ȭ��ȣ �Է�" style = "text-indent: 7px; border: 1px solid #a4a4a4; border-radius: 4px;">
			            	<div id="telErrorMessage" style="color: #fe5147; font-size: 13px; display: none;">'-'�� ������ ���ڸ� �Է����ּ���.</div>
			            	<button type="button" class="button" id="telChkBtn">�����ϱ�</button>
			            	 <br>
			            	<span id="target3"></span>
		            	</div>
		            </div>
		            
		            <!-- ȸ������ �� �⺻ ����Ʈ 300 -->
		            <div class="join_point mb20">
			             <div class = "input-box">
			                <input type="hidden" name="mempoint" id="mempoint" value="300" >
		                </div>
		            </div>
	            </div>
	            
	            
	            <!-- ���� ��ư -->
	            <div class="submit">
	              <input type="submit" class = "submit-button" value="����">
	            </div>
	            <!--  -->
	            <div class="to_join" style = "text-indent: 67px; font-weight: bold; margin-top: 10px;">
	                <a href="loginForm">�̹� ���� ȸ���̽Ű���?</a>
	            </div>
             </form>
        </div>
    </div>
<script>

	
//-----------------------------email check--------------------------------------------
	window.onload = function() {
    var emailInput = document.getElementById("email");
    var emailChkBtn = document.getElementById("emailChkBtn");
    var errorMessage = document.getElementById("target");
    var errorMsgBox = document.getElementById("messageBox");
    var emailInput = document.getElementById("email-box");
    
    
    emailChkBtn.addEventListener("click", function(e) {
        e.preventDefault();

        var emailValue = emailInput.value;
        if (!isValidEmail(emailValue)) {
            errorMessage.textContent = "�ùٸ� �̸��� ������ �ƴմϴ�.";
            errorMessage.style.fontSize = "13px";
            errorMessage.style.color = "#fe5147";
            messageBox.textContent = "'laura@laura.com' ���Ŀ� �°� �ٽ� �Է����ּ���!";
            messageBox.style.fontSize = "13px";
            messageBox.style.display = "block"; // �޽��� �ڽ� ���̵��� ����
            messageBox.style.color = "#fe5147";
         	// ���� �߻� ��, �׵θ� ��Ÿ���� ���������� ����
            emailInput.style.borderColor = "#fe5147";
            
        } else {
            errorMessage.textContent = "";
            messageBox.style.display = "none"; // �޽��� �ڽ� ���ߵ��� ����
            checkEmailAvailability(emailValue);
         	// ������ �ƴ� ���, �׵θ� ��Ÿ�� �ʱ�ȭ
            emailInput.style.borderColor = "";
        }
    });
 
    function isValidEmail(email) {
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        return emailPattern.test(email);
    }

    function checkEmailAvailability(email) {
        var xhr = new XMLHttpRequest();
        var param = "email=" + email;

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4) {
                if (xhr.status === 200) {
                    var idCnt = parseInt(xhr.responseText);
                    var msg = "";

                    if (idCnt === 0) {
                        msg = "��� ������ �̸��� �ּ� �Դϴ�.";
                        errorMessage.style.color = '#018945';
                        errorMessage.style.fontSize = "13px";
                    } else {
                        msg = "�̹� ��� ���� �̸��� �ּ� �Դϴ�.";
                        errorMessage.style.color = '#fe5147';
                        errorMessage.style.fontSize = "13px";
                        
                    }
                    errorMessage.textContent = msg;
                }
            }
        };

        xhr.open("GET", "<%=application.getContextPath()%>/idcheck?" + param, true);
        xhr.send();
    }
};


	
//-----------------------------password check--------------------------------------------
	function validatePassword() {
    var pwd = document.getElementById("pwd");
    var pwd2 = document.getElementById("pwd2");
    var passwordErrorMessage = document.getElementById("passwordErrorMessage");
    var passwordErrorMessage2 = document.getElementById("passwordErrorMessage2");
    
    var pwdValue = pwd.value;
    var pwd2Value = pwd2.value;

    if (pwdValue.length >= 8 && pwd2Value.length >= 8) {
        pwd.setCustomValidity("");
        pwd.style.borderColor = "";
        pwd2.style.borderColor = "";
        pwd2.setCustomValidity("");
        // ������ ���� �� ���� �޽��� ����
        passwordErrorMessage.style.display = "none";
        passwordErrorMessage2.style.display = "none";
    } else {
    	pwd.setCustomValidity("��й�ȣ�� 8�ڸ� �̻��̾�� �մϴ�.");
    	passwordErrorMessage2.textContent = "��й�ȣ�� 8�ڸ� �̻��̾�� �մϴ�.";
    	passwordErrorMessage2.style.color = "#fe5147";
    	passwordErrorMessage2.style.fontSize = "13px";
        passwordErrorMessage2.style.display = "block";
        // ������ �߻� �� �׵θ� ��Ÿ�� �� ���� �޽��� ǥ�� ����
        pwd.style.borderColor = "#fe5147";
        pwd2.style.borderColor = "#fe5147";
        
    }

    if (pwdValue !== "" && pwdValue === pwd2Value) {
        pwd2.setCustomValidity("");
        pwd2.style.borderColor = "";

        // ������ ���� �� ���� �޽��� ����
        passwordErrorMessage.style.display = "none";
    } else {
       
        // ������ �߻� �� �׵θ� ��Ÿ�� �� ���� �޽��� ǥ�� ����
         pwd.style.borderColor = "#fe5147";
        pwd2.style.borderColor = "#fe5147";

        // ���� �޽��� ���� �� ǥ��
        passwordErrorMessage.textContent = "��й�ȣ�� ���� �ʽ��ϴ�. �ٽ� Ȯ�����ּ���.";
        passwordErrorMessage.style.color = "#fe5147";
        passwordErrorMessage.style.fontSize = "13px";
        passwordErrorMessage.style.display = "block";
    }
}

var pwd = document.getElementById("pwd");
var pwd2 = document.getElementById("pwd2");

pwd.oninput = validatePassword;
pwd2.oninput = validatePassword;
	 
	 
//-----------------------------nickname check--------------------------------------------
	$(function() {
		$('#nnameChkBtn').click(function(e) {
			e.preventDefault();
			let nnamev = $('#nickname').val();
			
			//Ajax ����� ĳ�� ����� ����
			$.ajaxSetup({
				cache:false
			});
			//Ajax ó��
			let path = "<%=application.getContextPath()%>/nickcheck?nickname="+nnamev;
			$.ajax({
				url:path,
				success:function(resData){ //callbac �Լ��� xhr.responseText ��ģ ����
					let idCnt = parseInt(resData);
					let msg = "";
					if (idCnt === 0) {
						msg = "��� ������ �г��� �Դϴ�.";
						$('#target2').css({"color":"#005fbd" });
						$('#target2').css("font-size","13px");
					} else {
						msg = "�̹� ��� ���� �г��� �Դϴ�.";
						
						$('#target2').css("font-size","13px");
						$('#target2').css("color","#fe5147");
					}
					$('#target2').html(msg);
					
				}
			});
		});
	});


//-----------------------------tel check--------------------------------------------	
	$(function() {
		$('#telChkBtn').click(function(e) {
			e.preventDefault();
			let telv = $('#tel').val();
			
			//Ajax ����� ĳ�� ����� ����
			$.ajaxSetup({
				cache:false
			});
			//Ajax ó��
			let path = "<%=application.getContextPath()%>/telcheck?tel="+telv;
			$.ajax({
				url:path,
				success:function(resData){ //callbac �Լ��� xhr.responseText ��ģ ����
					let idCnt = parseInt(resData);
					let msg = "";
					if (idCnt === 0) {
						msg = "�����Ϸ�!";
						$('#target3').css("font-size","13px");
						$('#target3').css({"color":"#005fbd"});
						
					} else {
						msg = "�̹� �����ϴ� ��ȣ �Դϴ�.";
						$('#target3').css("font-size","13px");
						$('#target3').css("color","#fe5147");
					}
					$('#target3').html(msg);
					
				}
			});
		});
	});
	
	
//-----------------------------tel ����� ���� ���  check--------------------------------------------	
	var telInput = document.getElementById("tel");
	var telErrorMessage = document.getElementById("telErrorMessage");

	telInput.addEventListener("input", function() {
	    var inputValue = telInput.value;
	    var numericValue = inputValue.replace(/-/g, ''); // '-' ������ ���ڸ� ����
	    
	    if (inputValue !== numericValue) {
	        telErrorMessage.style.display = "block"; // ���� �޽��� ǥ��
	        telErrorMessage.style.borderColor = "#fe5147";
	    } else {
	        telErrorMessage.style.display = "none"; // ���� �޽��� ����
	        telErrorMessage.style.borderColor = "";
	    }
	});
	
	

//-----------------------------imgfile check--------------------------------------------	
	// �̹��� �̸����� �Լ� => javascript I/O ����� Ȱ��
	function readURL(input){
	   // 	input type="file" �� �ּҸ� �����´�.
	   if(input.files && input.files[0]){
		// �ڹٽ�ũ��Ʈ I/O 
		   var reader = new FileReader();
		// ������ 
		reader.onload = function(e){
			//console.log("�̺�Ʈ �߻�:"+e.target.result);
			// <img src>������ , attr("�Ӽ���","��") -><img src="">
			$('#imgx').attr('src', e.target.result); // �̹����� ���̳ʸ��� ���� 
		}
		reader.readAsDataURL(input.files[0]);
	   }
	}
	//jQuery ���� - ����� 
	$(function () {
		 //jQuery ������
		// ������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ : change()
		//#prfile : ���Ͼ��ε� �Ӽ��� ������
		//$('������')
		$('#prfile').change(function() {
			// input type�� value �Ӽ��� �� => C:\fakepath\c11.jpg
			//console.log($(this).val());
			if($(this).val().length > 0){
				readURL(this);
			}else{
				console.log("�̹��� ����");
			}
		})
	})


	
	
</script>


    <%@include file="../temp/footer.jsp" %>