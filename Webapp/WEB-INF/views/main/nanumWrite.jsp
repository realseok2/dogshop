<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<title>무료 나눔 페이지</title>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Jquery UI CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet">

<style>
	#bodypage{
		margin-top : 238px;
		margin-left : 300px;
	}
	.dropdown-item{
		width : 100px;
	}
	
	.btn-r {width: 100%; margin: 10px 0 20px 0; padding-top: 10px; text-align: right;}
</style>
</head>

<body class="bg-light">

	<!-- header -->
		<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->
	<!-- Page Content -->
	<div class="container">
	
	<!-- 컨텐츠 제목 -->
  		<!-- 예약정보 입력영역 -->
			<form id = "bodypage" class="col-md-7" method="post" action="${pageContext.request.contextPath }/nanumWrite" enctype="multipart/form-data">
					<div class="col-md-12">
						<div class="row mb-3">
							<div class="col-md-1"></div>
							<div class="col-md-2 mt-2">
								<h6>
									<b>지&nbsp;&nbsp;&nbsp;&nbsp;역</b>
								</h6>
							</div>
							<div class="col-md-5 btn-group">
									<button type="button"
										class="btn btn-outline-secondary dropdown-toggle btn-dropdown"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false" id="nanumArea">지역을 선택해주세요.</button>
								<div class="dropdown-menu dropdown-menu-left">
									<button class="dropdown-item dropdown-mypet-item" type="button" >서울</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >경기/인천</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >부산/울산</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >대구/경북</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >대전/충북</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >광주/전라</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >강원/제주</button>
								</div>
								<input type="hidden" name="area">
							</div>
						</div>	
						
						<div class="row mb-3">
							<div class="col-md-1"></div>
							<div class="col-md-2 mt-2">
								<h6>
									<b>분&nbsp;&nbsp;&nbsp;&nbsp;류</b>
								</h6>
							</div>
							<div class="col-md-5 btn-group">
									<button type="button"
										class="btn btn-outline-secondary dropdown-toggle btn-dropdown"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false" id="nanumGroups">분류를 선택해주세요.</button>
								<div class="dropdown-menu dropdown-menu-left">
									<button class="dropdown-item dropdown-mypet-item" type="button" >옷/장난감</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >간식/사료</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >외출용품</button>
									<button class="dropdown-item dropdown-mypet-item" type="button" >기타</button>
								</div>
								<input type="hidden" name="groups">
							</div>
						</div>	
						
						<div class="row mb-3">
							<div class="col-md-1"></div>
							<div class="col-md-2 mt-2">
								<h6>
									<b>제&nbsp;&nbsp;&nbsp;&nbsp;목</b>
								</h6>
							</div>
							<div class="col-md-9">
								<input type="text" id="dateResult" class="form-control" name="title" required>
							</div>
						</div>
						
						<div class="row mb-5">
							<div class="col-md-1"></div>
							<div class="col-md-2 mt-2">
								<h6>
									<b>내&nbsp;&nbsp;&nbsp;&nbsp;용</b>
								</h6>
							</div>
							<div class="col-md-9">
								<input type="text" id="timeResult"  class="form-control"
									required style=height:200px;  name="content">
							</div>
						</div>
							
						<div class="row mb-3">
							<div class="col-md-1"></div>
							<div class="col-md-2 mt-2">
								<h6>
									<b>이미지</b>
								</h6>
							</div>
							<div class="col-md-9">
						          <img src="..." class="img-responsive ml-2" alt="">
						          <input id="main-image" type="file" name="file">
							</div>
						</div>
				
						<div class="btn-r">
	                 		<button id="nanumAdd" type="submit" class="btn btn-outline-dark btn-block">작성 완료</button>
	                	</div>
				</div>
			</form>
      </div>
  		
  		
	<!-- //Page Content -->

	 <!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
	 <!-- /.Footer -->

	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- Jquery UI javaScript -->
	<script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/datepicker-ko.js"></script>

	<!-- custom javascript -->
	<script src="${pageContext.request.contextPath}/assets/bootstrap/js/common.js"></script>

<script type="text/javascript">
	$("#bodypage").submit(function(){
		var area = $("#nanumArea").text();
		var groups = $("#nanumGroups").text();

		$("input[name='area']").val(area);
		$("input[name='groups']").val(groups);


	});

</script>
</body>

</html>