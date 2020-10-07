<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

  <title>패타그램 - 메인</title>
  
  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

<style>
	.card-img-top{
		width:500px;
		height:167px;
	}
	
	.card-text {
	 overflow: hidden; text-overflow: ellipsis; display: -webkit-box; 
	 -webkit-line-clamp: 5; /* 라인수 */ -webkit-box-orient: vertical; 
	 word-wrap:break-word; line-height: 1.3em; height: 3.6em;
	}
	
</style>
</head> 

<body class="bg-light">

<!-- head -->
<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>  
<!-- /head -->
<!-- Page Content # 2 -->
  <div class="container">
    <!-- Jumbotron Header -->
    <header class="py-1 mt-4">
      <h4 class="display-5" style="margin-top: 5%;">인기순</h4>
      <hr class="mb-3">
    </header>

    <!-- Page Features -->
    <div class="row text-center mb-5">
      <c:forEach var="i" begin="0" end="3">
    		<div class="col-lg-3 col-md-6 mb-4">
	        <div class="card h-100">
	          <img class="card-img-top" src="${pageContext.request.contextPath}/dogshop/${shopList2[i].shopLogo}" alt="" style="height:240px; width:auto;" >
	          <div class="card-body">
	          	
            	<h4 class="card-title" style=color:#20366b;>${shopList2[i].shopTitle }</h4>
	           
	            <ul class="list-unstyled">
					<li class="reviewon"  data-shopno="${shopList2[i].shopNo}"><span class="star-input">
							<span class="input">
								<input type="checkbox" name="star-input" value="${shopList2[i].spoint}" id="p${shopList2[i].spoint*2}" checked><label id="test-spoint" for="p${shopList2[i].spoint}"></label>
							</span>
							<output for="star-input">
								<b id="spoint-t">${shopList2[i].spoint }점</b>
							</output>
							<a href="">&nbsp;&nbsp;리뷰보기</a>
						</span>					
				</ul>
				<hr>
	            <p class="card-text" style=height:100px;>${shopList2[i].shopDesc }</p>
	          </div>
	          <div class="card-footer">
	            <a href="${pageContext.request.contextPath}/store/${shopList2[i].shopDomain }/main" class="btn btn-sm btn-outline-dark" style="border:0;">매장 둘러보기</a>
	          </div>
	        </div>
	      	</div>
    	</c:forEach>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.Page Content # 2 -->
  
  
  <!-- Page Content # 1 -->
  <div class="container">
    <!-- Jumbotron Header -->
        <header class="py-1 mt-4">
      <h4 class="display-5">최신순</h4>
      <hr class="mb-3">
    </header>

    <!-- Page Features -->
    <div class="row text-center mb-5">
    	<c:forEach var="i" begin="0" end="3">
    		<div class="col-lg-3 col-md-6 mb-4">
	        <div class="card h-100">
	          <img class="card-img-top" src="${pageContext.request.contextPath}/dogshop/${shopList[i].shopLogo}" alt=""style="height:240px; width:auto;">
	          <div class="card-body">
	            <h4 class="card-title" style=color:#20366b;>${shopList[i].shopTitle }</h4>
	            <hr>
	            <p class="card-text" style=height:100px;>${shopList[i].shopDesc }</p>
	          </div>
	          <div class="card-footer">
	            <a href="${pageContext.request.contextPath}/store/${shopList[i].shopDomain }/main" class="btn btn-sm btn-outline-dark" style="border:0;">매장 둘러보기</a>
	          </div>
	        </div>
	      	</div>
    	</c:forEach>

    </div>
    <!-- /.row -->
    
  </div>
  <!-- /. Page Content # 1 -->

  
 <!-- /.Footer -->
<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
 <!-- /.Footer -->
 
	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
<script type="text/javascript">
 $(".reviewon").on("click", function(){
	    var shopno = $(this).data("shopno");
		console.log(shopno);
		$.ajax({
			url : "${pageContext.request.contextPath }/reviewon",
			type : "post",
			data : {
				shopno : shopno
			},
			dataType : "json",
			success : function(shopno) {
				if(shopno!=null)
				window.location.href = "${pageContext.request.contextPath}/showreview?shopno="+shopno
					
		}
		
	});
});
 </script>
</html>
