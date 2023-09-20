<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>



<!-- [�ٵ� ����] -->
<article>

	<!-- �Խ��� ���� �̹���(�ڿ��� ����) -->
	<div class="single-blog-wrapper section-padding-0-100">
    
    <div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/bg-img/news04.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2>News</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>
		<form action="news_uploading" method="post" enctype="multipart/form-data" id="upform">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			
			<div class="n_uploadform">
                        <h3 style="padding-top: 60px; padding-bottom: 40px;">News upload</h3>
                            <div class="row">
                            	<div class="col-12 col-md-7">
                                    <div class="group">
                                        <input type="text" name="nwriter" id="nwriter"
                                        value="${sessionScope.sessionNNAME}" readonly="readonly">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                    </div>
                                </div>
                                <br>
                                <div class="col-12 col-md-7">
                                    <div class="group">
                                        <input type="text" class="form-control" name="ntitle" id="ntitle" maxlength="50" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>����</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" class="form-control" name="npreview" id="npreview" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>��� ���</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" class="form-control" name="ncompany" id="ncompany" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>�Ź��� �̸�</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <textarea class="form-control" name="ncontent" id="ncontent"></textarea>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>��系��</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4">
                                    <div class="group">
                                    <input type="hidden" name="nimgn" id="nimgn">
                                	<label>�̹���</label>
                                	</div>
                                	<div class="group">
                                    <div class="col-sm-10">
									<input type="file" class="form-control" id="mfile" name="mfile">
									</div>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <img src="${rPath}/img/fboard_img/noimage.jpg" id="imgx"
										style="width: 210px; border: dotted 1px; margin: 5px 5px">
                                    </div>
                                </div>
                                <div class="col-12 col-md-7">
                                    <div class="group">
                                        <input type="text" class="form-control" name="nvideon" id="nvideon" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>���� ��ũ(�ӽ�)</label>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <button type="submit" class="btn original-btn">submit</button>
                                    
                                </div>
                            </div>
              </div>
		</form>
	</div>

</article>
<!-- �ٵ� -->

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


<%@include file="../temp/footer.jsp"%>