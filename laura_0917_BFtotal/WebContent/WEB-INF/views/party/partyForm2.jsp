<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>

<link rel="stylesheet" href="${rPath}/css/partyForm.css">




	<div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/fboard_img/party.jpg); height:310px;">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="imgText" style = "text-align: right;color: #fff;font-weight: bold;font-size: 38px;position: relative;left: 100px;top:80px;">
                        <span style = "background-color:rgba(0, 0, 0, 0.5);"><br>
						</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="container">
		<%-- boardForm ��� �� �ڸ�. --%>
		<form action="pinsert" method="post" enctype="multipart/form-data" id="upform">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			
			<div class="tr_uploadform">
                        <h3 style="padding-top: 60px; padding-bottom: 40px;">��Ƽ���� ���ε� �Խ���</h3>
                            <div class="row">
                            	<div class="col-12 col-md-7">
                                    <div class="group">
                                        <input type="text" name="pwriter" id="pwriter"
                                        value="${sessionScope.sessionNNAME}" readonly="readonly">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                    </div>
                                </div>
                                <input type="hidden" name="pmemnum" id="pmemnum" value="${sessionScope.sessionNO}">
                                <input type = "hidden" name = "pupdate" id = "pupdate">
                                <br>
                                <div class="col-12 col-md-7">
                                    <div class="group">
                                        <input type="text" class="form-control" name="partytitle" id="partytitle" maxlength="50" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>����</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" class="form-control" name="partyloc" id="partyloc" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>����</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="date" class="form-control" name="partydate" id = "partydate">
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>��¥</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <textarea class="form-control" name=partycontent id="partycontent"></textarea>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>����</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4">
                                    <div class="group">
                                    <input type="hidden" name="imgn" id="imgn">
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
                                <div class="col-12">
	                                <div class="submitBtn">
	                                    <button type="submit" class="button">�۾���</button>   
	                                </div>
		                        </div>
		                   </div>
		              </div>
				</form>
			</div>

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