<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>


<!-- [�ٵ� ����] -->
<article>
	<header>
		<h1 style="text-align: center;">�ݵ� ���ε�</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>
		<form action="finsert" method="post" enctype="multipart/form-data"
			id="upform">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="funtitle">����</label> <input type="text"
					class="form-control" id="funtitle" placeholder="���� �Է�(5-100)"
					name="funtitle" maxlength="100" required="required"
					pattern=".{2,50}">
			</div>

			<div class="form-group">
				<label for="content">����</label>
				<textarea class="form-control" rows="5" id="content" name="content"
					placeholder="���� �ۼ�" required="required"></textarea>
			</div>
			<div class="form-group">
				<label for="funpreview">�̸�����</label> <input type="text" name="funpreview"
					id="funpreview" placeholder="��Ͽ��� ���� ���� �� ����" pattern=".{2,50}"
					required="required">
			</div>
			<div class="form-group">
				<!-- �α����� ȸ�������� �ѹ� �������� -->
				<input type="hidden" name="fupmemnum"
					value="${sessionScope.sessionNO}"> <label for="funwriter">�ۼ���</label>
				<input type="text" class="form-control" id="funwriter"
					name="funwriter" value="${sessionScope.sessionNNAME}"
					pattern=".{1,10}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="targetprice">��ǥ�ݾ�</label> <input type="number" step="10000" class="form-control" id="targetprice" placeholder="10000���� , " name="targetprice" pattern=".{2,30}" required="required">
			</div>
			<div class="form-group">
				<label for="cost">�ݵ��ݾ� ����</label> <input type="number" step="1000"class="form-control" id="cost" placeholder="1000���� , " name="cost"pattern=".{2,30}" required="required">
			</div>

			<div class="form-group">
				<input type="hidden" name="postimgn" id="postimgn"> <label for="mfile">�̹���</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="mfile" name="mfile" required="required">
				</div>
				<div class="col-sm-10">
					<img src="${rPath}/img/fboard_img/noimage.jpg" id="imgx"
						style="width: 210px; border: dotted 1px; margin: 5px 5px">
				</div>
			</div>
			<div class="form-group">
				<label for="sdate">�ݵ�������</label> <input type="date"
					class="form-control" id="sdate" name="sdate" required="required">
			</div>
			<div class="form-group">
				<label for="fdate">�ݵ�������</label> <input type="date"
					class="form-control" id="fdate" name="fdate" required="required">
			</div>

			<!-- ���� ����(null�ȵ����� �ӽ� ��) -->
			<div class="form-group">
				<label for="funvideo">����</label> <input type="text"
					class="form-control" id="funvideo" name="funvideo">
			</div>
			<div class="form-group">
				<label for="actpic">���</label> <input type="text"
					class="form-control" id="actpic" name="actpic">
			</div>
			<div class="form-group">
				<label for="funpurpose">�ݵ�����</label> <input type="text"
					class="form-control" id="funpurpose" name="funpurpose">
			</div>
			<div class="form-group">
				<label for="funbudget">�����</label> <input type="text"
					class="form-control" id="funbudget" name="funbudget">
			</div>

			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">���</button>
				<input type="button" value="����Ʈ" class="btn btn-danger"
					onclick="location='fboardList'" />
			</div>
		</form>
	</div>

</article>
<script>
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