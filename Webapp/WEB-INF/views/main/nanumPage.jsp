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
	.img_size{
		width:500px;
		height:400px;
	}
	
	.my-hr2 {
	    border: 0;
	    height: 1px;
	    background: #ccc;
  	}
	
	.my-hr2 {
	    border: 0;
	    height: 2px;
	    background: #ccc;
  	}
  	#commentBtn{
  		float : right;
  		width:100px;
  		height:80px;
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
		
		<div class="row" style=margin-top:100px;>
			<h1 class="text-left">[${nanumVo.area}]${nanumVo.title }</h1>
		</div>
		
		<div class="row">
			<h6 class="text-left">&nbsp;&nbsp;&nbsp;작성자 : ${nanumVo.userName}</h6>
		</div>
		
		<div class="row">
			<h6 class="text-left">&nbsp;&nbsp;&nbsp;작성일 : ${nanumVo.regdate}</h6>
		</div>
		
		<div class="row">
			
			<div class="col-md-6">
				<img class="img_size" src="${pageContext.request.contextPath}/dogshop/${nanumVo.img}">			
			</div>

			<div class="col-md-6">
				<div class="row mb-3">
					<div class="col-md-12">
						<div class="row mb-2">
							<div class="col-md-9">
								<h5 class="mb-2">
									<b style=color:orange>상세 내용</b>
								</h5>
							</div>
							
							<div class="col-md-3">
								<h6 class="mb-2"></h6>
							</div>
						</div>
						
						<div class="row mb-3">
							<div class="col-md-12">
								<h5>${nanumVo.content }</h5>
							</div>
						</div>
						
						<div class="row">
							<h5 style=color:red>거래전 필독! 주의하세요!</h5>
							<br><h6>* 연락처 없이 외부링크, 카카오톡, 댓글로만 거래유도 주의</h6> 
							<br><h6>* 연락처 및 계좌번호를 사이버캅과 더치트로 조회해보기</h6>
							<br><h6>* 회원과 구매 회원 간의 상품거래정보 및 거래에 관여하지 않으며 어떠한 의무와 책임도 부담하지 않습니다.</h6>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<br><br>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-1"></div>
				<div class="col-md-4">
					<h6>댓글 0개</h6>
				</div>
				<hr class="my-hr2">
			</div>
		</div>
		
		<!-- 댓글 -->
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-1"></div>
				<div class="col-md-4">
					<h6><b>홍길동</b></h6>
					<h6>판매 완료 되었나요??</h6>
					<tt>2020-09-23 14:22</tt>
				</div>
				<hr class="my-hr1">
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
					<textarea rows="3" cols="140" name="contents"></textarea>
					
					<button type="button" id="commentBtn">글 작성</button>
			</div>
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