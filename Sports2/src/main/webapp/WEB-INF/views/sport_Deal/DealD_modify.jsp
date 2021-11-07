<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<script src = "http://code.jquery.com/jquery-latest.js"></script>
<title>직거래 글쓰기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.ico">

<!-- CSS here -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<style>
#paging {
	color: black;
}

.pagination {
	display: inline-block;
}

.pagination a {
	color: black;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
}

.pagination



a
:hover
:not



(
.active


)
{
background-color


:


#ddd


;
}
#paging {
	text-align: center;
	margin-top: 0
}

#fname, #lname {
	border-radius: 30px 30px 30px 30px;
}

/*파일 */
label.file input {position:absolute; width:0; overflow:hidden; opacity:0;}
label.file {
  width:0%; /* Use for fluid design */
  min-width:200px;
  height:30px;
  line-height:28px!important;
  cursor:pointer;
  position:relative;
  display:inline-block;
  white-space:nowrap;
  font-family:sans-serif;
  text-align:right;
}
#filevalue , #filevalue2,#filevalue3,#filevalue4{
  content:"No file chosen";
  display:block;
  position:absolute;
  box-sizing:border-box;
  width:100%;
  height:inherit;
  padding:0 84px 0 10px;
  border:0px solid #e8eeef;
  border-width:2px 0px 2px 2px;
  border-radius:3px 0 0 3px;
  background-color:#fff;
  color:#a0b7c5;
  font-size:12px;
  overflow:hidden;
  text-overflow:ellipsis;
  text-align:center;
  vertical-align:middle;
}

label.file:after {
  content:"BROWSE";
  display:inline-block;
  position:relative;
  box-sizing:border-box;
  width:74px;
  height:inherit;
  padding:0 4px;
  border-radius:0 3px 3px 0;
  background-color:#a0b7c5;
  color:#fff;
  overflow:hidden;
  font-size:9px;
  font-weight:bold;
  text-overflow:ellipsis;
  text-align:center;
  vertical-align:middle;
}

/* 라디오 */
.checkbox[type=checkbox], .checkbox[type=radio] {
	display: none;
}

label.input-label {
	display: inline-block;
	font-size: 13px;
	cursor: pointer;
}

label.input-label::before {
	display: inline-block;
	margin: 0 20px;
	font-family: FontAwesome;
	font-size: 20px;
	color: rgba(4, 120, 193, 0.2);
	-webkit-transition: transform 0.2s ease-out, color 0.2s ease;
	-moz-transition: transform 0.2s ease-out, color 0.2s ease;
	-ms-transition: transform 0.2s ease-out, color 0.2s ease;
	-o-transition: transform 0.2s ease-out, color 0.2s ease;
	transition: transform 0.2s ease-out, color 0.2s ease;
	-webkit-transform: scale3d(0.8, 0.8, 1);
	-moz-transform: scale3d(0.8, 0.8, 1);
	-ms-transform: scale3d(0.8, 0.8, 1);
	-o-transform: scale3d(0.8, 0.8, 1);
	transform: scale3d(0.8, 0.8, 1);
}

label.input-label.checkbox::before {
	content: "\f0c8";
}

label.input-label.radio::before {
	content: "\f111";
}

input.checkbox+label.input-label:hover::before {
	-webkit-transform: scale3d(1, 1, 1);
	-moz-transform: scale3d(1, 1, 1);
	-ms-transform: scale3d(1, 1, 1);
	-o-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

input.checkbox+label.input-label:active::before {
	-webkit-transform: scale3d(1.5, 1.5, 1);
	-moz-transform: scale3d(1.5, 1.5, 1);
	-ms-transform: scale3d(1.5, 1.5, 1);
	-o-transform: scale3d(1.5, 1.5, 1);
	transform: scale3d(1.5, 1.5, 1);
}

input.checkbox:checked+label.input-label::before {
	display: inline-block;
	font-family: FontAwesome;
	color: #0478c1;
	-webkit-transform: scale3d(1, 1, 1);
	-moz-transform: scale3d(1, 1, 1);
	-ms-transform: scale3d(1, 1, 1);
	-o-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

input.checkbox:checked+label.input-label.checkbox::before {
	content: "\f14a";
}

input.checkbox:checked+label.input-label.radio::before {
	content: "\f058";
}
</style>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<!-- Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="${pageContext.request.contextPath}/resources/image/logo/sports_logo.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->

	<!-- 헤더 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/header.jsp"/>

	<main> <!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="${pageContext.request.contextPath}/resources/img/dealimg.png">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2  style = "font-family :'나눔고딕'">운동물품 거래</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End--> <!-- Latest Products Start -->









		<div class="site-section bg-light">
			<div class="container">
				<div class="row">

					<div class="col-lg-12">
						<div class="section-title mb-5">
							<h2>
								<b>Modify</b>
							</h2>

						</div>
						<form action ="modifyAction?num=${param.num}" method = "post" enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-4 form-group">
									<label for="DIR_SUBJECT">제목</label> <input type="text" id="DIR_SUBJECT"
										class="form-control form-control-lg" style="width: 1000px"
										placeholder="제목을 입력하세요....." name = "DIR_SUBJECT"
										value = "${d.DIR_SUBJECT}"> 
								</div>

							</div>


							<div class="row">
								<div class="col-md-6 form-group">
									<label for="DIR_PRICE">금액</label><br> <input type="text"
										id="DIR_PRICE" class="form-control" style="width: 200px"
										placeholder="금액 입력 .. " name = "DIR_PRICE"
										value = "${d.DIR_PRICE}">
								</div>
								<div class="col-md-6 form-group">
									<label for="DIR_PHONE">전화번호</label><br> <input type="text"
										id="DIR_PHONE" class="form-control" style="width: 200px"
										placeholder="010-xxxx-xxxx" name= "DIR_PHONE"
										value= "${d.DIR_PHONE}">
								</div>

							</div>
							<div class="row">
								<div class="col-md-4 form-group">
									<label for="DIR_ADDRESS">거래장소</label> <input type="text" id="DIR_ADDRESS"
										class="form-control form-control-lg" style="width: 1000px"
										placeholder="종로3가역 3번출구앞 ...." name= "DIR_ADDRESS"
										value="${d.DIR_ADDRESS}">
								</div>

							</div>


							<div class="row">
								<div class="col-md-11 form-group">
									<label for="message">내용</label>
									<textarea name="DIR_CONTENT" id="DIR_CONTENT"
								cols="30" rows="10"
						class="form-control"
						 placeholder="내용 입력 .. ">${d.DIR_CONTENT}</textarea>
								</div>
							</div>
							
							<hr>
							<div class="row">
								<div class="col-md-6 form-group">
									<label for="message">사진 첨부</label><br> <label class="file"
										title="">
										<c:choose>
										 <c:when test="${d.ORI_DIR_MAINFILE!='0'}">
										 <span id="filevalue">${d.ORI_DIR_MAINFILE}</span>
										</c:when>
										<c:when test="${d.ORI_DIR_MAINFILE=='0'}">
										 <span id="filevalue">No file chosen</span>
										</c:when>
										</c:choose>
										<input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))"
										id="upfile1" name="uploadfile1" 
										/></label>

								</div>
								<div class="col-md-6 form-group">
									<label for="message"></label><br> <label class="file"
										title="">
										<c:choose>
										 <c:when test="${d.ORI_DIR_FILE2!='0'}">
										 <span id="filevalue2">${d.ORI_DIR_FILE2}</span>
										</c:when>
										<c:when test="${d.ORI_DIR_FILE2=='0'}">
										 <span id="filevalue2">No file chosen</span>
										</c:when>
										</c:choose>
										<input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))"
										id="upfile2" name="uploadfile2"
										 /></label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6 form-group">
									<label for="message"></label><br> <label class="file"
										title="">
										<c:choose>
										 <c:when test="${d.ORI_DIR_FILE3!='0'}">
										 <span id="filevalue3">${d.ORI_DIR_FILE3}</span>
										</c:when>
										<c:when test="${d.ORI_DIR_FILE3=='0'}">
										 <span id="filevalue3">No file chosen</span>
										</c:when>
										</c:choose>
										<input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))"
										id="upfile3" name="uploadfile3"
										/></label>
								</div>
								<div class="col-md-6 form-group">
									<label for="message"></label><br> <label class="file"
										title="">
										<c:choose>
										 <c:when test="${d.ORI_DIR_FILE4!='0'}">
										 <span id="filevalue4">${d.ORI_DIR_FILE4}</span>
										</c:when>
										<c:when test="${d.ORI_DIR_FILE4=='0'}">
										 <span id="filevalue4">No file chosen</span>
										</c:when>
										</c:choose>
										<input type="file"
										onchange="this.parentNode.setAttribute('title', this.value.replace(/^.*[\\/]/, ''))"
										id="upfile4" name="uploadfile4"
										/></label>
								</div>
							</div>
							<hr>
							<br> <br> <br>
							<div class="container">
								<div class="row" style="text-align: center">
									<div class="col-11">
										<input type="submit" value="Submit"
											class="btn btn-primary py-3 px-5"
											style="background-color: black; height: 50px"> &emsp;
										<input type="button" value="Cancel"
											class="btn btn-primary py-3 px-5"
											style="background-color: gray; height: 50px"
											id="cancel">
									</div>
									<br> <br> <br> <br> <br> <br> <br>

								</div>
							</div>


						</form>
					</div>

				</div>


			</div>
		</div>


<script>
$("#cancel").click(function(){
	history.back();
})
</script>



	</div>




	<!-- Gallery End--> </main>
	<!-- Footer 영역  -->
	<jsp:include page="/WEB-INF/views/sport_comm/footer2.jsp"/>

	<!-- JS here -->
	<script>
	$(document).ready(function(){
		
		var check = 0 ;
		var check2 = 0 ;
		var check3 = 0 ;
		var check4 = 0; 
		//submit 버튼 클릭할 때 이벤트 부분
		$("form").submit(function(){
	
			/*
			 이곳이 적용되는 경우
			 1. 파일 첨부를 변경하지 않은 경우
			 	파일 첨부를 변경하지 않으면 $('#filevalue').text()의 파일명을 
			 	파라미터 'check'라는 이름으로 form에 추가하여 전송합니다.
			 
			 2. 파일첨부의 remove 이미지를 클릭해서 파일을 제거하고 파일첨부를 변경하지 않은 경우 
			 	이때 value의 값은 ''입니다.
			 * 
			 */
			if (check==0){
				value=$('#filevalue').text();
				if(value=='No file chosen'){
					value='0';
				}
				
				html = "<input type='text' value='" + value + "' name = 'check'>";
				$(this).append(html);
			}
			
			if (check2==0){
				value2=$('#filevalue2').text();
				if(value2=='No file chosen'){
					value2='0';
				}
				html = "<input type='text' value='" + value2 + "' name = 'check2'>";
				$(this).append(html);
			}
			
			if (check3==0){
				value3=$('#filevalue3').text();
				if(value3=='No file chosen'){
					value3='0';
				}
				html = "<input type='text' value='" + value3 + "' name = 'check3'>";
				$(this).append(html);
			}
			
			if (check4==0){
				value4=$('#filevalue4').text();
				if(value4=='No file chosen'){
					value4='0';
				}
				html = "<input type='text' value='" + value4 + "' name = 'check4'>";
				$(this).append(html);
			}
		}); //submit end 
		
		$("#upfile1").change(function(){
			check++;
			var inputfile = $(this).val().split('\\');
			$('#filevalue').text(inputfile[inputfile.length - 1]);
			console.log(check);
		});
		$("#upfile2").change(function(){
			check2++;
			var inputfile = $(this).val().split('\\');
			$('#filevalue2').text(inputfile[inputfile.length - 1]);
			console.log(check);
		});
		$("#upfile3").change(function(){
			check3++;
			var inputfile = $(this).val().split('\\');
			$('#filevalue3').text(inputfile[inputfile.length - 1]);
			console.log(check);
		});
		$("#upfile4").change(function(){
			check4++;
			var inputfile = $(this).val().split('\\');
			$('#filevalue4').text(inputfile[inputfile.length - 1]);
			console.log(check);
		});
	})
	</script>
	<!-- All JS Custom Plugins Link Here here -->
	<script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>

	<!-- Jquery, Popper, Bootstrap -->
	<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>

	<!-- One Page, Animated-HeadLin -->
	<script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/animated.headline.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>

	<!-- Scrollup, nice-select, sticky -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="${pageContext.request.contextPath}/resources/js/contact.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>