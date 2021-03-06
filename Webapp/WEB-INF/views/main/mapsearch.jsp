<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>지도로 매장찾기</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55baf69ca87b3c6183422c4ba140bef0&libraries=services,clusterer"></script>
</head>

<body class="bg-light">

	<!-- header -->
	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->
	
	<!-- Page Content -->
	<div class="container">
		<div id="content-head" class="py-5 text-left">
			<!-- <img class="d-block mx-auto mb-4" src="./image/bootstrap-solid.svg" alt="" width="72" height="72"> -->
			<h2>Store_Search</h2>
			<div id="location">
				<ul class="list-inline">
					<li>Store_Search </li>
					<li class="last">Map</li>
				</ul>
			</div>
			<!-- <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p> -->
		</div>

		<!-- Category -->
		<div class="row">
			<div class="col-md-2 order-md-1 mb-4">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<!-- <span class="text-muted">회원 정보</span> -->
					<!-- <span class="badge badge-secondary badge-pill">3</span> -->
				</h4>
				<ul class="list-group mb-3">
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="${pageContext.request.contextPath}/listsearch">List</a>
							</h6>
							<!-- <small class="text-muted">Brief description</small> -->
						</div>
					</li>
					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">
								<a href="${pageContext.request.contextPath}/mapsearch">Map</a>
							</h6>
							<!-- <small class="text-muted">Brief description</small> -->
						</div>
					</li>
				</ul>
			</div>
			<!-- /. Category -->

			<div class="col-md-10 order-md-2">
				<div class="text-center" id="map-search">
					<div class="container">
						<div class="row">
							<div id="map" style="width: 100%; height: 400px;"></div>
						</div>
					</div>
				</div>
				<hr class="mb-4">
				<div>
					<div class="row mapSearch-body pl-4">
						<div class="mapSearch-info">
							<ul class="list-unstyled">
								<li>Store_Name</li>
								<li id="infotitle">준오헤어 신논현점</li>
							</ul>
							<ul class="list-unstyled">
								<li>Opening_Hours</li>
								<li>09:30 ~ 21:30</li>
							</ul>
							<ul class="list-unstyled">
								<li>Contect_Us_Number</li>
								<li id="infonumber">02-2052-0605</li>
							</ul>
							<ul class="list-unstyled">
								<li>Store_Address</li>
								<li id="infoaddress">서울특별시 강남구 역삼동 809번지 2층</li>
							</ul>
							<ul class="list-unstyled">
								<li>Email</li>
								<li>aaa@naver.com</li>
							</ul>
						</div>
						<a href="" class="img-mapSearch-location ml-5 pl-5"><img src="${pageContext.request.contextPath }/assets/image/default.png" class="img-responsive rounded img-mapSearch" alt="Responsive image"></a>
					</div>
					<hr class="mb-4">
				</div>
			</div>
		</div>
	</div>

	<!-- //Page Content -->
	<!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->

	 <!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
	 <!-- /.Footer -->

	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
<script type="text/javascript">
$("")
$.ajax({
	url : "${pageContext.request.contextPath }/main/findshop",		
	type : "post",
	/* contentType : "application/json", */
	data : {shopaddress : shopvo.shopAddress,
			shoptitle : shopvo.shopTitle,
			shopnumber : shopvo.shopNumber
	},
	dataType : "json",
	contentType: "application/json",
	success : function(){
		$("#infotitle").text(shoptitle);
		$("#infoaddress").text(shopaddress);
		$("#infonumber").text(shopnumber);

	}
});

</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55baf69ca87b3c6183422c4ba140bef0"></script>
<script>
var mapContainer = document.getElementById('map');
var mapOption = {
	center : new daum.maps.LatLng(37.498875, 127.026226),
	level : 5
};
var map = new daum.maps.Map(mapContainer, mapOption);
var geocoder = new daum.maps.services.Geocoder();
var listData = [];

var listData = [ 
	"<c:out value = '${sList[0].shopAddress}'/>",
	"<c:out value = '${sList[1].shopAddress}'/>",
	"<c:out value = '${sList[2].shopAddress}'/>",
	"<c:out value = '${sList[3].shopAddress}'/>",
	"<c:out value = '${sList[4].shopAddress}'/>",
	"<c:out value = '${sList[5].shopAddress}'/>",
	"<c:out value = '${sList[6].shopAddress}'/>"
	];

listData.forEach(function(addr, index) {
	geocoder.addressSearch(addr,function(result, status) {
		if (status === daum.maps.services.Status.OK) {
			var coords = new daum.maps.LatLng(result[0].y,result[0].x);
			
			var marker = new daum.maps.Marker(
				{
				map : map,
				position : coords
			});
			var infowindow = new daum.maps.InfoWindow({
				content : '<div style="width:150px;text-align:center;padding:6px 0;">'+ listData[index]+ '</div>',
				disableAutoPan : true
			});
			kakao.maps.event.addListener(marker,'click',function() {
				infowindow.open(map,marker);
															
				var shopaddress = result[0].address.address_name;
					$.ajax({
						url : "${pageContext.request.contextPath }/main/findshop",		
						type : "post",
						/* contentType : "application/json", */
						data : {shopAddress: shopaddress},
						dataType : "json",
						success : function(shopvo){
							$("#infotitle").text(shopvo.shopTitle);
							$("#infonumber").text(shopvo.shopNumber);	
							$("#infoaddress").text(shopvo.shopAddress);
						}
					});
				});
			}
		});
	});
</script>
</html>