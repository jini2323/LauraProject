<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>

<!-- [�ٵ� ����] -->
<article>
	<header>
		<h1 style="text-align: center;">FileUpload Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>
		<form action="insert" method="post" enctype="multipart/form-data" id="upform">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="title">����</label>
				<input type="text" class="form-control" id="title"
					placeholder="���� �Է�(5-100)" name="title" maxlength="100"
					required="required" pattern=".{2,50}">
			</div>
			
			<div class="form-group">
				<label for="content">����</label>
				<textarea class="form-control" rows="5" id="content" name="content"
					placeholder="���� �ۼ�"></textarea>
			</div>
			<div class="form-group">
				<label for="writer">�̸�����</label>
				<input type="text" name="preview" id="preview" 
				placeholder="��Ͽ��� ���� ���� �� ����" pattern=".{2,50}">	
			</div>
			<div class="form-group"> <!-- �α����� ȸ�������� �ѹ� �������� -->
				<label for="writer">�ۼ���</label> 
				<input type="text"
					class="form-control" id="fwriter"
					name="fwriter"  value="${sessionScope.sessionNNAME}" pattern=".{1,10}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="cost">���</label> <input type="number"
					class="form-control" id="cost" placeholder="1000���� , "
					name="cost" pattern=".{2,30}">
			</div>
		
			<div class="form-group">
				<input type="hidden" name="imgn" id="imgn">
				<label for="title">�̹���</label>
				<div class="col-sm-10"><input type="file" class="form-control" id="mfile"
					name="mfile" >
			    </div>		
			    <div class="col-sm-10">
			    <img src="${rPath}/img/fboard_img/noimage.jpg" id="imgx"
			    style="width: 210px; border: dotted 1px; margin: 5px 5px">
			    
			    </div>
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">���</button>
				 <input type="button" value="����Ʈ"  class="btn btn-danger"
				 onclick="location='fboardList'"/>
			</div>
		</form>
	</div>

</article>
<script>
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
		//#mfile : ���Ͼ��ε� �Ӽ��� ������
		//$('������')
		$('#mfile').change(function() {
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