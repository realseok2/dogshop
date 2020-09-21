<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<title>무료 나눔 페이지</title>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet">

<style>
	#bodypage{
		margin-top : 200px;
		margin-left : 50px;
	}
	.dropdown-item{
		width : 466px;
	}
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
			<div id = "bodypage" class="col-md-7">
				<form action = "" >
					<div class="row mb-3">
						<div class="col-md-12">
							<div class="row mb-3">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-2">
									<h6>
										<b>제&nbsp;&nbsp;&nbsp;&nbsp;목</b>
									</h6>
								</div>
								<div class="col-md-9">
									<input type="text" id="dateResult" class="form-control"
										required>
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
									<input type="text" id="timeResult" class="form-control"
										required style=height:150px;>
								</div>
							</div>
							
							<div class="row mb-5">
								<div class="col-md-1"></div>
								<div class="col-md-2 mt-1">
									<h6>
										<b>분류 선택</b>
									</h6>
								</div>
								<div class="col-md-8 btn-group">
									<label for="rdo-male">&nbsp;&nbsp;옷/장난감</label>
									<input type="radio" id="rdo-male" name="gender" value="male">
		
									<label for="rdo-female">&nbsp;&nbsp;산책 용품 </label> 
									<input type="radio" id="rdo-female" name="gender" value="female">&nbsp;&nbsp;
									
									<label for="rdo-female">&nbsp;&nbsp;기타</label> 
									<input type="radio" id="rdo-female" name="gender" value="female">
									
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
							          <img id="div-center" src="..." class="img-responsive ml-2" alt="">
							          <input id="div-center" id="main-image" type="file" name="file">
								</div>
							</div>
						</div>
					</div>
				</form>
      </div>
  		
  		
	</div>
	<!-- //Page Content -->

	 <!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
	 <!-- /.Footer -->

	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>