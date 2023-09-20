<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<script src="${rPath}/js/ajaxDemo.js"></script>


<!-- [�ٵ� ����] -->
<article>
	<header>
		<h1 style="text-align: center;">evModifyForm :only for Admin</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>

		<form action="evModify" method="post" enctype="multipart/form-data"
			id="eventModForm">
			<input type="hidden" name="evreip"
				value="<%=request.getRemoteAddr()%>"> 
				<input type="hidden"
				name="evNum" id="evNum" value="${vo.evNum}">

			<div class="mb-3 mt-3">
				<label class="form-label">�̺�Ʈ ��ȣ : </label>${vo.evNum}
			</div>
			<div class="form-group">
				<label for="evTitle">����</label> <input type="text"
					class="form-control" id="evTitle" name="evTitle" maxlength="100"
					required="required" pattern=".{2,50}" value="${vo.evTitle}">
			</div>
			<div class="form-group">
				<label for="evContent">����</label>
				<textarea class="form-control" rows="5" id="evContent"
					name="evContent" required="required">${vo.evContent}</textarea>
			</div>
			<div class="form-group">
				<label for="evWriter">�ۼ���</label> <input type="text"
					class="form-control" id="evWriter" value="Admin" name="evWriter"
					pattern=".{1,10}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="reward">��ǰ</label> <input type="text"
					class="form-control" id="reward" name="reward" pattern=".{1,10}"
				  value="${vo.reward}">
			</div>
			<!-- �̺�Ʈ ������ -->
			<div class="form-group">
				<label for="evSdate">���� �̺�Ʈ ������ : ${vo.evSdate} </label> <br> ��
				�̺�Ʈ ������ : <input type="date" class="form-control" id="evSdate"
					name="evSdate"
					required="required" value="${vo.evSdate}">
				
			</div>
			<!-- ������ �̹��� -->
			<c:choose>
				<c:when test="${vo.evImg == null}">
					<!-- �̹����� ���� ��� -->
					<div class="mb-3">
						<label class="form-label"></label> <img
							src="${rPath}/img/event_form/basic.PNG"
							style="width: 80px; border: dotted 1px; cursor: pointer;"
							name="evImg" id="evImg">
					</div>
				</c:when>

				<c:when test="${vo.evImg != null}">
					<!-- �̹����� ���� ��� -->
					<div class="mb-3">
						<label class="form-label"></label> <img
							src="${rPath}/img/eventImg/${vo.evImg}"
							style="width: 80px; border: dotted 1px; cursor: pointer;"
							name="evImg" id="evImg">
					</div>
				</c:when>
			</c:choose>

			<%--�̹��� ���� ��  --%>
		<c:choose> <%--������ ���ε�� �̹����� ���ٸ� --%>
			<c:when test="${vo.evImg == null}">
					<div class="form-group">
				<input type="hidden" name="evImg" id="evImg"> <label
					for="evfile">�̹���</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="evfile" name="evfile">
				</div>
				<div class="col-sm-10">
					<img src="${rPath}/img/event_form/noimage.jpg" id="imgev"
						style="width: 210px; border: dotted 1px; margin: 5px 5px">
				</div>
			</div>
			</c:when>
			<c:otherwise> <%--������ ���ε�� �̹����� �ִٸ�--%>
					<div class="form-group">
				<input type="hidden" name="evImg" id="evImg"> <label
					for="evfile">�̹���</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="evfile" name="evfile">
				</div>
				<div class="col-sm-10">
					<img src="${rPath}/img/eventImg/${vo.evImg}" id="imgev"
						style="width: 210px; border: dotted 1px; margin: 5px 5px">
				</div>
			</div>
			</c:otherwise>
		</c:choose>
			

			<!-- ������ ���� -->
			<c:choose>
				<c:when test="${vo.evVeo == null}">
					<!-- �̹����� ���� ��� -->
					<div class="mb-3">
						<label class="form-label"></label> <img
							src="${rPath}/img/event_form/basic.PNG"
							style="width: 80px; border: dotted 1px; cursor: pointer;"
							name="evVeo" id="evVeo">
					</div>
				</c:when>

				<c:when test="${vo.evVeo != null}">
					<!-- �̹����� ���� ��� -->
					<div class="mb-3">
						<label class="form-label"></label> <img
							src="${rPath}/img/eventImg/${vo.evVeo}"
							style="width: 80px; border: dotted 1px; cursor: pointer;"
							name="evVeo" id="evVeo">
					</div>
				</c:when>
			</c:choose>



			<%--���� ���� ��  --%>
				<c:choose> <%--������ ���ε�� ������ ���ٸ� --%>
			<c:when test="${vo.evImg == null}">
					<div class="form-group">
				<input type="hidden" name="evVeo" id="evVeo"> <label
					for="evfile2">������</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="evfile2" name="evfile2">
				</div>
				<div class="col-sm-10">
					<img src="${rPath}/img/event_form/noimage.jpg" id="imgev2"
						style="width: 210px; border: dotted 1px; margin: 5px 5px">
				</div>
			</div>
			
			</c:when>
			
			<c:otherwise> <%--������ ���ε�� ������ �ִٸ�--%>
						<div class="form-group">
				<input type="hidden" name="evVeo" id="evVeo"> <label
					for="evfile2">������</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="evfile2" name="evfile2">
				</div>
				<div class="col-sm-10">
					<img src="${rPath}/img/eventImg/${vo.evVeo}" id="imgev2"
						style="width: 210px; border: dotted 1px; margin: 5px 5px">
				</div>
			</div>
			</c:otherwise>
		</c:choose>
			
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">���</button>
				<input type="button" value="����Ʈ" class="btn btn-danger"
					onclick="location='eventMain'" />
			</div>


		</form>
	</div>
</article>

<script>
//�̹��� �̸����� �Լ� => javascript I/O ����� Ȱ��
function readURL(input, targetID){
   if(input.files && input.files[0]){
	   var reader = new FileReader();
	   reader.onload = function(e){
		   $(targetID).attr('src', e.target.result);
	   }
	   reader.readAsDataURL(input.files[0]);
   }
}

// jQuery ���� - ����� 
$(function () {
	// ù ��° �̹��� �̸�����
	$('#evfile').change(function() {
		if($(this).val().length > 0){
			readURL(this, '#imgev');
		}else{
			console.log("�̹��� ����");
		}
	});
	
	// �� ��° �̹��� �̸�����
	$('#evfile2').change(function() {
		if($(this).val().length > 0){
			readURL(this, '#imgev2');
		}else{
			console.log("�̹��� ����2");
		}
	});
});

</script>


<%@include file="../temp/footer.jsp"%>