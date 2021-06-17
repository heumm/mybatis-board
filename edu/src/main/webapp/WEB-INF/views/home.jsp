<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.seed.study.vo.MainVo"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<title>SEED IT 게시판 실습</title>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="./resources/css/home.css">
	</head>
	
	<body id="body">
		<header>
			<h1>
				게시판 실습
			</h1>
			<hr>
			<br>
		</header>
		
		<div id="tableHeader">
			<span class="tableHeader_item checkBoxArea"></span>
			<span class="tableHeader_item">이름</span>
			<span class="tableHeader_item">나이</span>
			<span class="tableHeader_item">전화번호</span>
			<span class="tableHeader_item" id="lastItem">이메일</span>
		</div>
		
		<div id="content">
			<div id="tableBody">
			</div>
		</div>

		<div class="modal_back" id="modal_back">
			<div class="modal">
				유저 추가
				<hr>
				<br>
				<form id="form" class="form" name="form" method="post" action="insertUser.do">
					<br>
					<div>
						<div class="textBox">이름<hr></div>
						<input name="name" id="name" onfocus="this.select()" class="textArea" placeholder="..">
					</div>
					<br>
					<div>
						<span class="textBox">나이<hr></span>
						<input name="age" id="age" onfocus="this.select()" class="textArea" placeholder="..">
					</div>
					<br>
					<div>
						<span class="textBox">전화번호<hr></span>
						<input name="phone" id="phone" onfocus="this.select()" class="textArea" placeholder="010-1234-5678">
					</div>
					<br>
					<div>
						<span class="textBox">이메일<hr></span>
						<input type="email" name="email" id="email" onfocus="this.select()" class="textArea" placeholder="seed@it.com">
					</div>
					<br>
					<br>
				</form>
					<button class="addUserBtn" id="cancleBtn">취소</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="addUserBtn" id="okBtn" type="submit">완료</button>
			</div>
		</div>
		<div class="modal_back2" id="modal_back2">
			<div class="modal2">
				유저 삭제
				<hr><br><br><br><br>
				<div class="modal2_text">
					정말 삭제 하시겠습니까?
				</div>
				<br><br><br><br><br>				
					<button class="addUserBtn" id="cancleBtn2">아니오</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="addUserBtn" id="okBtn2">예</button>
			</div>
		</div>
		
		<div class="smallModal">
			<br><br><br>
			<div id="smallModalText">
				이름을 입력해주세요.
			</div>
			<br><br>
			<button id="smallModalBtn">확인</button>
		</div>
		
		<footer id="footer">
			<br>
			<hr>
			<button class="deleteBtn">-</button>
			<button class="addBtn">+</button>
			<P id="footerText"> ${serverTime} - 기술지원팀 - </P>
		</footer>
	</body>
	<script type="text/javascript">
		selectList();
		//list 처음에 불러오기
		function selectList(){
			var url = "selectList.do";
			var str = "";
			$.getJSON(url,function(data){
				$('#tableBody').empty();
				$.each(data.userList, function(i,v){
					if(i%2!=0){
						str='<div class="body_item" id="body_item1" name="body_item'+v.userNo+'">'+
							'<span class="tableBody_item checkBoxArea">' +
								'<input class="checkBox" type="checkbox">' +
							'</span>' +
							'<span class="tableBody_item">'+v.userName+'</span>'+
							'<span class="tableBody_item">'+v.userAge+'</span>'+
							'<span class="tableBody_item">'+v.userPhone+'</span>'+
							'<span class="tableBody_item">'+v.userEmail+'</span>'+
							'<input class="hidden" type="hidden" value="'+v.userNo+'"/>'+
							'</div>';
					}else{
						str='<div class="body_item" id="body_item2" name="body_item'+v.userNo+'">'+
						'<span class="tableBody_item checkBoxArea">' +
							'<input class="checkBox" type="checkbox">' +
						'</span>' +
						'<span class="tableBody_item">'+v.userName+'</span>'+
						'<span class="tableBody_item">'+v.userAge+'</span>'+
						'<span class="tableBody_item">'+v.userPhone+'</span>'+
						'<span class="tableBody_item">'+v.userEmail+'</span>'+
						'<input class="hidden" type="hidden" value="'+v.userNo+'"/>'+
						'</div>';
					}
					$('#tableBody').append(str);
					if(i+1==data.userList.length){
						afterFunction();
					}
				});
			});
		};
		
		function afterFunction(){
			//라인 클릭1 check
			$('.body_item').click(function(){
				var targ;
				if (!e) {
					var e = window.event;
				}
				var tid = e.target;
				
				if($('div[name='+tid.getAttribute('name')+']').children()[0].children[0].checked==true){
					$('div[name='+tid.getAttribute('name')+']').children()[0].children[0].checked=false;
					if(tid.id=="body_item1"){
						$('div[name='+tid.getAttribute('name')+']').css("background","rgba(100,100,100,0.15)");
					}else{
						$('div[name='+tid.getAttribute('name')+']').css("background","rgba(1,1,1,0.1)");
					}
					
				}else{
					$('div[name='+tid.getAttribute('name')+']').children()[0].children[0].checked=true;
					$('div[name='+tid.getAttribute('name')+']').css("background","rgba(56,147,151,0.37)");
				}
			});
			//라인 클릭2 check
			$('.tableBody_item').click(function(){
				var targ;
				if(!e) {
					var e = window.event;
				}
				var tid = e.target;
				var tname = tid.closest('div').getAttribute('name');
				var tid2 = tid.closest('div').id;
				if(tid.closest('div').children[0].children[0].checked==true){
					tid.closest('div').children[0].children[0].checked==false;
					if(tid2=="body_item1"){
						$('div[name='+tname+']').css("background","rgba(100,100,100,0.15)");
					}else{
						$('div[name='+tname+']').css("background","rgba(1,1,1,0.1)");
					}
				}else{
					tid.closest('div').children[0].children[0].checked=true;
					$('div[name='+tname+']').css("background","rgba(56,147,151,0.37)");
				}
			});
		}
		
		//유저추가 모달 on
		
	</script>
</html>