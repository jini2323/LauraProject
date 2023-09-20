<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<article>
	<header>Board Ajax Demo</header>
	<ul class="list-unstyled">
		<li class="border-top my-3"></li>
	</ul>
	<div>
	<%--기본 form에서 아래처럼 복사해서 편집 해놓기  --%>
	<input type="hidden" name="reip" id="reip" value="<%=request.getRemoteAddr()%>">
	<p><input type="text" class="form-control" id="title" placeholder="제목입력(4-100자)" name="title" maxlength="100"></p>	
	<p><textarea class="form-control" rows="3" id="content" name="content" placeholder="내용 작성"></textarea></p>	
	<p><input type="text" class="form-control" id="writer" placeholder="작성자(2-10자)" name="writer"></p>	
	
	
	<%--기본 form에서 아래처럼 복사해서 편집 해놓기  --%>
		<button type="button" class="btn btn-outline-secondary" id="load1" >AjaxListLoad</button>
		<button type="button" class="btn btn-outline-secondary" id="sendAjax" >데이터전송</button>
	</div>
	<div class="container">
		<table class="table table-borderd">
			<thead>
				<tr>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>조회수</td>
					<td>작성날짜</td>
				</tr>
			</thead>
			<%--for start 영역
			${vo.속성} , ${map.key}
			List<BoardVO> list => BoardVO=> e
			--%>
			<tbody id="target">
			
			
			</tbody>
			<tfoot>
				<%--page 영역 --%>
				<tr>
					<th colspan="5" style="text-align: center;">
						<ul class="pagination" style="margin: 0 auto; width: 35%">
							<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</th>
				</tr>
				<%--검색 영역 --%>
				<tr>
					<th colspan="5">
						<form class="d-flex">
							<select class="form-control btn-mini" id="sel1"
								style="margin-left: 120px;">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="Search.." style="width: 300px">
							<button class="btn btn-outline-secondary" type="button">Search</button>
						</form>
					</th>
				</tr>
				<tr>
					<td colspan="5" style="text-align: right;">
						<!-- 
						      jQuery로 글작성 폼으로 이동시키기
						      id를 부여하여 선택자로 selector를 사용해서 이동시키기
						      footer.jsp에서 작성.
						       -->
						<button type="button" class="btn btn-outline-secondary" id="wbtn" >글작성</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</article>
<script>
	window.onload =function(){
		//쓸모 ㄴ 
		//var param = null;
		//var type = 'aa';
		//sendRequest("RequestParamDemo", param, res2, "post", type);
		
		
		//테스트용? 
		let number=1;
		document.querySelector("#load1").onclick=function(e){
			e.preventDefault();
			let param = null;
			sendRequest("boardJsonList", param, res, "get");
		}
		
		
		document.querySelector("#sendAjax").onclick=function(e){
			e.preventDefault();
			//전달할 객체
			/* const data = {num:1,
					title:"오늘은 왠지 ㅎㅎㅎㅎ0", 
					writer:"김길동",
					content:"루피는 김길동 싫어함",
					reip:"192.334.223",
					bdate: "2023-06-14"} */
			//객체를 동적으로 전달해보자 
			const data = {}
			data.num=number;
			data.title=document.getElementById("title").value;
			data.writer=document.getElementById("writer").value;
			data.content=document.getElementById("content").value;
			data.reip=document.getElementById("reip").value;
			data.bdate="2023-06-15";
			let param = JSON.stringify(data); //json으로 변환 
			let type = "json"
			alert(data.num);
			sendRequest("RequestParamDemo", param, res2, "post", type);//제이슨 컨트롤러 가서 만들기 
			
			number++;
			
		}
		function res2() {
			if(xhr.readyState ===4 ){
			 if(xhr.status === 200) {
					let res = xhr.responseText;
					let jsObj = JSON.parse(res);
					//console.log(res);
					console.log("==============");
					console.log(jsObj);
					//UI 배치
					let htmls = "";
					for(let e in jsObj){
						htmls += "<tr><td>"+jsObj[e].num+"</td>"					
						htmls += "<td>"+jsObj[e].title+"</td>"					
						htmls += "<td>"+jsObj[e].writer+"</td>"	
						htmls += "<td>0</td>"	
						htmls += "<td>"+jsObj[e].bdate+"</td></tr>"					
					}
					
					
					document.getElementById("target").style.backgroundColor="pink";
					document.getElementById("target").style.color="red";
					//target.innerHTML = "<tr><td colspan ='5'>test</td></tr>";
					target.innerHTML = htmls;
					
					
				}
			}
		}
		
		
		
		function res() {
			if(xhr.readyState === 4){
				if(xhr.status ===200){
					let res = xhr.responseText;
					//console.log(typeof(res)); //String -> json 타입
					//자바스크립트 객체로 변환 ****  Stringfy , JSON.parse()
					let jsObj = JSON.parse(res);
					//console.log(typeof(jsObj));  //Obj
					
					//UI 배치
					let target = document.getElementById("target");
					let htmls = "";
					for(let e in jsObj){
						htmls += "<tr><td>"+jsObj[e].num+"</td>"					
						htmls += "<td>"+jsObj[e].title+"</td>"					
						htmls += "<td>"+jsObj[e].writer+"</td>"	
						htmls += "<td>0</td>"	
						htmls += "<td>"+jsObj[e].bdate+"</td></tr>"					
					}
					
					
					document.getElementById("target").style.backgroundColor="lightgray";
					document.getElementById("target").style.color="red";
					//target.innerHTML = "<tr><td colspan ='5'>test</td></tr>";
					target.innerHTML = htmls;
				}
			}
			
		}
		
	};
	

</script>

<%@include file="../temp/footer.jsp"%>