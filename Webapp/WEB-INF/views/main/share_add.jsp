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

<title>share-main</title>

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
              
          <!-- content input area -->
          <div class="row mt-4">
            <div class="col-md-10 mb-5 center-block">
              <label for="petInfo" class="mb-3">Contents</label>
              <textarea class="form-control" rows="12" placeholder="Please enter your details."></textarea>
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
	<script src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>




</html>