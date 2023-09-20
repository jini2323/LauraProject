<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>

<!-- [바디 시작] -->
<article>
	<header>
		<h1 style="text-align: center;">FileUpload Demo</h1>
	</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div class="container">
		<%-- boardForm 들어 갈 자리. --%>
		<form action="insert" method="post" enctype="multipart/form-data" id="upform">
			<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control" id="title"
					placeholder="제목 입력(5-100)" name="title" maxlength="100"
					required="required" pattern=".{2,50}">
			</div>
			
			<div class="form-group">
				<label for="content">내용</label>
				<textarea class="form-control" rows="5" id="content" name="content"
					placeholder="내용 작성"></textarea>
			</div>
			<div class="form-group">
				<label for="writer">미리보기</label>
				<input type="text" name="preview" id="preview" 
				placeholder="목록에서 보일 내용 한 문장" pattern=".{2,50}">	
			</div>
			<div class="form-group"> <!-- 로그인한 회원고유ㅜ 넘버 가져오기 -->
				<label for="writer">작성자</label> 
				<input type="text"
					class="form-control" id="fwriter"
					name="fwriter"  value="${sessionScope.sessionNNAME}" pattern=".{1,10}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="cost">비용</label> <input type="number"
					class="form-control" id="cost" placeholder="1000단위 , "
					name="cost" pattern=".{2,30}">
			</div>
		
			<div class="form-group">
				<input type="hidden" name="imgn" id="imgn">
				<label for="title">이미지</label>
				<div class="col-sm-10"><input type="file" class="form-control" id="mfile"
					name="mfile" >
			    </div>		
			    <div class="col-sm-10">
			    <img src="${rPath}/img/fboard_img/noimage.jpg" id="imgx"
			    style="width: 210px; border: dotted 1px; margin: 5px 5px">
			    
			    </div>
			</div>
			<div class="form-group" style="text-align: right; margin-top: 10px;">
				<button type="submit" class="btn btn-primary">등록</button>
				 <input type="button" value="리스트"  class="btn btn-danger"
				 onclick="location='fboardList'"/>
			</div>
		</form>
	</div>

</article>
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




    <%@include file="../temp/footer.jsp" %>