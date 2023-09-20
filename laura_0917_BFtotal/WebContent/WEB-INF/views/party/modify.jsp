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

	<!-- �Խ��� ���� �̹���(�ڿ��� ����) -->
	<div class="single-blog-wrapper section-padding-0-100">
    
    <div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/bg-img/party01.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content text-center">
                        <h2>�����׽�Ʈ�� ��</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>
		<form action="partyUpdate" method="post" enctype="multipart/form-data" id="upform">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			
			<div class="tr_uploadform">
                        <h3 style="padding-top: 60px; padding-bottom: 40px;">Party Upload</h3>
                            <div class="row">
                            	<div class="col-12 col-md-7">
                                    <div class="group">
                                        <input type="text" name="pwriter" id="pwriter"
                                        value="${sessionScope.sessionNNAME}" readonly="readonly">
                                        <input type="hidden" name="partynum"id="partynum" value="${vo.partynum }">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                    </div>
                                </div>
                                <input type="hidden" name="pmemnum" id="pmemnum" value="${sessionScope.sessionNO}">
                                <br>
                                <div class="col-12 col-md-7">
                                    <div class="group">
                                        <input type="text" class="form-control" name="partytitle" id="partytitle" value="${vo.partytitle }" maxlength="50" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>����</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" class="form-control" name="partyloc" id="partyloc" value="${vo.partyloc }" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>����</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="date" class="form-control" name="partydate"  id = "partydate">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>��¥</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <textarea class="form-control" name=partycontent id="partycontent">${vo.partycontent }</textarea>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>����</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4">
                                    <div class="group">
                                    <input type="hidden" name="pimgn" id="pimgn">
                                	<label>�̹���</label>
                                	</div>
                                	<div class="group">
                                    <div class="col-sm-10">
									<input type="file" class="form-control" id="mfile" name="mfile">
									</div>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <img src="${rPath}/img/fboard/${vo.pimgn}" id="imgx"
										style="width: 210px; border: dotted 1px; margin: 5px 5px">
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