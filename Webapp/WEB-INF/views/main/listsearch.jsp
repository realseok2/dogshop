<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>리스트로 매장찾기</title>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet">

</head>

<body class="bg-light">

	<!-- header -->
		<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->
	<!-- Page Content -->

	<div class="container">
		<div id="content-head" class="py-5 text-left">
			<h2>Store_Search</h2>
			<div id="location">
				<ul class="list-inline">
					<li>Store_Search</li>
					<li class="last">List</li>
				</ul>
			</div>
		</div>

		<!-- Category -->
		<div class="row">
			<div class="col-md-2 order-md-1 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<!-- <span class="text-muted">회원 정보</span> -->
					<!-- <span class="badge badge-secondary badge-pill">3</span> -->
				</h4>
				<ul class="list-group mb-3">
					<li class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="${pageContext.request.contextPath }/listsearch">List</a>
							</h6>
						</div>
					</li>
					<li class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="${pageContext.request.contextPath }/mapsearch">Map</a>
							</h6>
						</div>
					</li>
				</ul>
			</div>
			<!-- /. Category -->

			<div class="col-md-10 order-md-2">
				<div>
					<div class="row listSearch-body pl-4">

						<div class="listSearch-info">

							<ul class="list-unstyled">
								<li>Store_Name</li>
								<li id="infotitle"></li>
							</ul>

							<ul class="list-unstyled">
								<li>Opening Hours</li>
								<li>09:30 ~ 21:30</li>
							</ul>

							<ul class="list-unstyled">
								<li>Contect_Us_Number</li>
								<li id="infonumber"></li>
							</ul>

							<ul class="list-unstyled">
								<li>Store_Address</li>
								<li id="infoaddress"></li>
							</ul>
							<ul class="list-unstyled">
								<li>Email</li>
								<li>aaa@naver.com</li>
							</ul>
						</div>
							<a href="" class="img-listSearch-location ml-5 pl-5"><img src="${pageContext.request.contextPath }/assets/image/default.png" class="img-responsive rounded img-listSearch" id = "listPage_img" alt="Responsive image"></a>
					</div>
				</div>

				<table class="table table-sm table-hover text-center listSearch">
					<thead>
						<tr>
							<th scope="col">No.</th>
							<th scope="col">Store_Name</th>
							<th scope="col">Store_Address</th>
							<th scope="col">Contect_Us_Number</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sList}" var="shopVo">
							<tr class="shopinfo" data-shopDomain="${shopVo.shopDomain}">
								<td>${shopVo.shopNo}</td>
								<td><a href="${pageContext.request.contextPath }/store/${shopVo.shopDomain}/main">${shopVo.shopTitle}</a></td>
								<td class="center-block pr-3 ml-5">${shopVo.shopAddress}</td>
								<td>${shopVo.shopNumber}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

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
<script type="text/javascript">
	$(".shopinfo").on("click", function() {
		var shopDomain = $(this).data("shopdomain");
		
		$.ajax({
			url : "${pageContext.request.contextPath }/selectStore",
			type : "post",
			/* contentType : "application/json", */
			data : {
				shopDomain : shopDomain
			},
			dataType : "json",
			success : function (shopVo){
					$("#infotitle").text(shopVo.shopTitle);
					$("#infonumber").text(shopVo.shopNumber);
					$("#infoaddress").text(shopVo.shopAddress);
					$('#listPage_img').attr("src", "${pageContext.request.contextPath}/dogshop/"+shopVo.shopLogo);
					
				}
			});
	})
</script>

</html>