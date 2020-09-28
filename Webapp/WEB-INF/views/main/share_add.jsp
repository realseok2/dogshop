<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>Share-main</title>
	
	<!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
	

</head>

<body class="bg-light">

	<!-- header -->
	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->
	
	
	
	
	
	
	





  <!-- Page Content -->
  <!-- ================================여기 부분부터 내용이 달라집니다.================================ -->
  <div class="container mt-5 pt-4">
    <header class="py-1 mt-4">
      <h2 class="display-5">Share_Petagram</h2>
      <hr class="mb-1">
    </header>

    <h5 class="display-5">Share to Us</h5>
    <hr class="mb-1">

    <div class="container">
      
      <div class="row">
          
        <div class="col-md-12">
              
          <form action="${pageContext.request.contextPath}/add" method="post" enctype="multipart/form-data">
	          <!-- content input area -->
	          <div class="row mt-4">
	            <div class="col-md-10 mb-5 center-block">
	              <div>
                  <label for="petInfo" class="mb-3">Contents</label>



                 <div class="col-md-2 btn-group mr-5" style="float: right;">
                    <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle btn-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">반려견을 선택해 주세요.</button>
                    <div class="dropdown-menu dropdown-menu-left">
                      <!-- 아이템추가: .dropdown-mypet-item.html() 변경 -->
                      
                      <c:forEach items="${aList}" var="dogVo">
						<button class="dropdown-item dropdown-mypet-item" type="button" value="" >${dogVo.dogName}</button>
						<input type="hidden" value="${dogVo.dogNo}" name="dogNo">
						<input type="hidden" value="${dogVo.dogName}" name="dogName">
						<input type="hidden" value="${dogVo.dogType}" name="dogType">
						<input type="hidden" value="${dogVo.dogWeight}" name="dogWeigtht">
						<input type="hidden" value="${dogVo.dogAge}" name="dogAge">
						<input type="hidden" value="${dogVo.dogEtc}" name="dogEtc">											
					  </c:forEach>
                   
                    </div>
                  </div>

                </div>
	              <textarea class="form-control" rows="12" name= "content" placeholder="Please enter your details."></textarea>
	            </div>
	          </div>
	          <!-- //content input area -->
	
	          <hr class="mb-4">
	
	          <!-- file input area -->
	          <img id="div-center" src="..." class="img-responsive" alt="">
	          <input class="ml-5 pl-5"type="file" name="file">
	          <!-- //file input area -->
	
	          <hr class="mt-4 mb-4">
	
	          <!-- submit button -->
	          <div class="form-row text-center">
	            <div class="col-12">
	                <button id="btn-submit" class="btn btn-sm btn-primary col-md-1 " type="submit">Upload</button>
	            </div>
	          </div>
          </form>
          <!-- //submit button -->
  
        </div>
      </div>
    </div>

  </div>
  <!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->























	<!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>
	<!-- /.Footer -->

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
			src="${pageContext.request.contextPath}/assets/bootstrap/js/common.js"></script>
</body>


</html>