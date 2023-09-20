<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<form action="ajaxTest" method="post">
		
	
	
	</form>
</div>


<script>
window.onload =function(){
	document.querySelector("#load1").onclick=function(e){
		e.preventDefault();
		let param = null;
		sendRequest("boardJsonList", param, res, "get");
	}
	
	
	document.querySelector("#sendAjax").onclick=function(e){
		e.preventDefault();
		//전달할 객체
		const data = {num:1,
				title:"오늘은 왠지 ㅎㅎㅎㅎ0", 
				writer:"김길동",
				content:"루피는 김길동 싫어함",
				reip:"192.334.223",
				bdate: "2023-06-14"}
		let param = null;
		let type = "json"
		sendRequest("RequestParamDemo", param, res, "post", type);//제이슨 컨트롤러 가서 만들기 
	}
	function res2() {
		if(xhr.readyState ===4 ){
			xhr.status === 200{
				let res = xhr.responseText;
				console.log(res);
			}
		}
	}
	
	
	
	function res() {
		if(xhr.readyState === 4){
			if(xhr.status ===200){
				let res = xhr.responseText;
				console.log(typeof(res)); //String -> json 타입
				//자바스크립트 객체로 변환 ****  Stringfy , JSON.parse()
				let jsObj = JSON.parse(res);
				console.log(typeof(jsObj));  //Obj
				
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
</body>
</html>