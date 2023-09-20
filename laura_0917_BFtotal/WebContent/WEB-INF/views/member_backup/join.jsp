<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src="${rPath}/js/ajaxDemo.js"></script>


<div class="wrap">
	<div class="join_in">
		<form action="joinComplete" method="post" id="loginInfo"
			autocomplete="on">
			<div class="join_info">
				<h2>������</h2>
				<div class="join_simple">
					<li><a href=""><i class="fa-brands fa-google"></i></a></li>
					<li><a href=""><i class="fa-sharp fa-solid fa-n"></i></a></li>
					<li><a href=""><i class="fa-brands fa-kickstarter-k"></i></a></li>
				</div>

				<input type="hidden" name="reip"
					value="<%=request.getRemoteAddr()%>">

				<div class="join_email">
					<input type="email" name="email" id="email" placeholder="Email">
					<button type="button" class="btn btn-primary" id="emailChkBtn">�ߺ�üũ</button>
					<br> <span id="target"></span>
				</div>
				<div class="join_name">
					<input type="text" name="name" id="name" placeholder="�̸��� �Է��ϼ���">
				</div>

				<div class="join_img">
					<div class="group">
						<input type="hidden" name="profilepic" id="profilepic"> <label>�̹���</label>
					</div>
					<div class="group">
						<div class="col-sm-10">
							<input type="file" class="form-control" id="mfile" name="mfile">
						</div>
						<span class="highlight"></span> <span class="bar"></span> <img
							src="${rPath}/img/profile-img/profile.png" id="imgx"
							style="width: 210px; border: dotted 1px; margin: 5px 5px">
					</div>
				</div>
				<div class="join_sex" style="display: flex;">
					<p>������ �������ּ���</p>
					<input type="radio" name="memgender" id="memgenderW" value="����">����
					<input type="radio" name="memgender" id="memgenderM" value="����">����
				</div>
				<div class="join_birth">
					<input type="date" name="birthday" id="birthday"
						placeholder="��������� �Է��ϼ���">
				</div>
				<div class="join_nname">
					<input type="text" name="nickname" id="nickname"
						placeholder="�г����� �Է��ϼ���">
					<button type="button" class="btn btn-primary" id="nnameChkBtn">�ߺ�üũ</button>
					<br> <span id="target2"></span>
				</div>
				<div class="join_pw">
					<input type="password" name="pwd" id="pwd" placeholder="8���̻� �Է�">
					<input type="password" name="pwd2" id="pwd2" placeholder="��й�ȣ Ȯ��">
				</div>
				<div class="join_tel">
					<input type="tel" name="tel" id="tel"
						placeholder="��ȣ�� �Է����ּ���. - ����">
					<button type="button" class="btn btn-primary" id="telChkBtn">�����ϱ�</button>
					<br> <span id="target3"></span>
				</div>
				<div class="submit">
					<input type="submit" value="����">
				</div>
				<div class="to_join">
					<a href="loginForm">�̹� �����ϼ̳���?</a>
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

	$(function() {
		$('#nnameChkBtn').click(function(e) {
			//alert("Test");
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
						msg = "��� ������ �г��� �Դϴ�";
						$('#target2').css({"backgroundColor":"red", "color":"blue" });
					} else {
						msg = "�̹� ������� �г��� �Դϴ�.!";
						
						$('#target2').css("backgroundColor","red");
						$('#target2').css("color","white");
					}
					$('#target2').html(msg);
					
				}
			});
		});
	});
	
	
	$(function() {
		$('#telChkBtn').click(function(e) {
			//alert("Test");
			e.preventDefault();
			let telv = $('#tel').val();
			
			//Ajax ����� ĳ�� ����� ����
			$.ajaxSetup({
				cache:false
			});
			//Ajax ó��
			let path = "<%=application.getContextPath()%>/telcheck?tel="+ telv;
							$.ajax({
								url : path,
								success : function(resData) { //callbac �Լ��� xhr.responseText ��ģ ����
									let idCnt = parseInt(resData);
									let msg = "";
									if (idCnt === 0) {
										msg = "�����Ϸ�!";
										$('#target3').css({
											"backgroundColor" : "red",
											"color" : "blue"
										});
									} else {
										msg = "�̹� �ִ� ��ȣ �Դϴ�.!";

										$('#target3').css("backgroundColor",
												"red");
										$('#target3').css("color", "white");
									}
									$('#target3').html(msg);

								}
							});
						});
	});

	// �̹��� �̸����� �Լ� => javascript I/O ����� Ȱ��
	function readURL(input) {
		// 	input type="file" �� �ּҸ� �����´�.
		if (input.files && input.files[0]) {
			// �ڹٽ�ũ��Ʈ I/O 
			var reader = new FileReader();
			// ������ 
			reader.onload = function(e) {
				//console.log("�̺�Ʈ �߻�:"+e.target.result);
				// <img src>������ , attr("�Ӽ���","��") -><img src="">
				$('#imgx').attr('src', e.target.result); // �̹����� ���̳ʸ��� ���� 
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	//jQuery ���� - ����� 
	$(function() {
		//jQuery ������
		// ������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ : change()
		//#mfile : ���Ͼ��ε� �Ӽ��� ������
		//$('������')
		$('#mfile').change(function() {
			// input type�� value �Ӽ��� �� => C:\fakepath\c11.jpg
			//console.log($(this).val());
			if ($(this).val().length > 0) {
				readURL(this);
			} else {
				console.log("�̹��� ����");
			}
		})
	})
</script>


<%@include file="../temp/footer.jsp"%>