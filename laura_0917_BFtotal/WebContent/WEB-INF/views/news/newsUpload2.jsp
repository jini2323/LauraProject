<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>



<!-- [바디 시작] -->
<article>

	<!-- 게시판 제목 이미지(박원빈 수정) -->
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
		<%-- boardForm 들어 갈 자리. --%>
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
                                        <label>제목</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" class="form-control" name="npreview" id="npreview" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>기사 요약</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="group">
                                        <input type="text" class="form-control" name="ncompany" id="ncompany" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>신문사 이름</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="group">
                                        <textarea class="form-control" name="ncontent" id="ncontent"></textarea>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>기사내용</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-4">
                                    <div class="group">
                                    <input type="hidden" name="nimgn" id="nimgn">
                                	<label>이미지</label>
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
                                        <label>영상 링크(임시)</label>
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
<!-- 바디끝 -->

<script>
	// 이미지 미리보기 함수 => javascript I/O 기능을 활용
	function readURL(input){
	   // 	input type="file" 의 주소를 가져온다.
	   if(input.files && input.files[0]){
		// 자바스크립트 I/O 
		   var reader = new FileReader();
		// 리스너 
		reader.onload = function(e){
			//console.log("이벤트 발생:"+e.target.result);
			// <img src>선택자 , attr("속성명","값") -><img src="">
			$('#imgx').attr('src', e.target.result); // 이미지를 바이너리로 전달 
		}
		reader.readAsDataURL(input.files[0]);
	   }
	}
	//jQuery 문법 - 축약형 
	$(function () {
		 //jQuery 선택자
		// 대상선택자에서 변화를 감지하는 이벤트 : change()
		//#mfile : 파일업로드 속성을 선택자
		//$('선택자')
		$('#mfile').change(function() {
			// input type의 value 속성의 값 => C:\fakepath\c11.jpg
			//console.log($(this).val());
			if($(this).val().length > 0){
				readURL(this);
			}else{
				console.log("이미지 없음");
			}
		})
	})
</script>


<%@include file="../temp/footer.jsp"%>