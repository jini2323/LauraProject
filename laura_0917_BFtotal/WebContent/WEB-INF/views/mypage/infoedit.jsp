<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>

<!-- ��Ʈ��Ʈ�� -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>

   <div style="text-align: center;">
   		<h1 style="text-align: center;">ȸ�� ���� ����</h1>
	
	<form method="post" action="infoupdate" autocomplete="off" id=editform>
			<input type="hidden" name="num" value="${sessionScope.sessionNO }">

			<div class="row mb-3">
				<label for="email" class="col-sm-2 col-form-label">���̵�(�̸���) : </label>
				<div class="infogroup">
				<input type="text" name="email" id="email" value="${vo.email}" readonly="readonly">
				</div>
			</div>
			
			<div class="row mb-3">
				<label for="editpwdBtn" class="col-sm-2 col-form-label">��й�ȣ ���� : </label>
				<button type="button" class="btn btn-primary" id="editpwdBtn" onclick="location='pwdedit'">��й�ȣ �����ϱ�</button>
			</div>
			
			<div class="row">
				<label for="name" class="col-sm-2 col-form-label">�̸� : </label>
				<div class="infogroup">
				<input type="text" name="name" id="name" value="${vo.name}" readonly="readonly"><br>
				<a style="color:gray; font-size: 8px;">�� �����Ͻ� ��� �������� �� �̸������� �����մϴ�.</a> <br>
				</div> 
			</div>
			<div class="row mb-3">
				<label for="nickname" class="col-sm-2 col-form-label">�г��� : </label>
				<div class="col-sm-2">
					<input type="text" name="nickname" class="form-control" id="nickname" value="${vo.nickname}">
					<button type="button" class="btn btn-primary" id="nnameChkBtn">�ߺ�üũ</button>
					<span id="target2"></span>
				</div>
			</div>
			<div class="row mb-3">
				<label for="tel" class="col-sm-2 col-form-label">��ȭ��ȣ</label>
				<div class="col-sm-2">
					<input type="tel" name="tel" class="form-control" id="tel" value="${vo.tel}">
				</div>
			</div>
			<div class="row mb-3">
				<label for="memgender" class="col-sm-2 col-form-label">���� : </label>
				<div class="col-sm-2">
					<input type="text" name="memgender" class="form-control" id="memgender" value="${vo.memgender}">
					<!-- <div class = "radio-box">
		                	<input type="radio" name="memgender" id="memgenderW" value = "����">����
		                	<input type="radio" name="memgender" id="memgenderM" value = "����">����
		                </div> -->
				</div>
			</div>
			<div class="row mb-3">
				<label for="birthday" class="col-sm-2 col-form-label">������� : </label>
				<div class="col-sm-2">
					<input type="text" name="birthday" class="form-control" id="birthday" value="${vo.birthday}" placeholder="�������('-'���� 8��)" readonly="readonly">
				</div>
				<%-- <div class = "input-box">
		            <input type="date" name="birthday" id="birthday" value="${vo.birthday} style =" border-radius: 4px; border: 1px solid #a4a4a4; text-indent: 7px;">
		        </div> --%>
			</div>
			
			<button type="submit" class="btn btn-warning">����</button>
			<a href="<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}" class="btn btn-sm btn-danger">���</a>
			
		</form>
	</div>
	
	<script>
	/*�г��� �ߺ�Ȯ��(�ڿ���0822 ����)*/
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
	

	</script>
	
    <%@include file="../temp/footer.jsp" %>