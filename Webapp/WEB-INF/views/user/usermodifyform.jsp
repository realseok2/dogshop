<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

  <title>내 정보 수정</title>
  <!-- Bootstrap core JavaScript -->

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
    
  <script src="${pageContext.request.contextPath}/assets/js/main-aside.js"></script>
</head>

<body class="bg-light">


<!-- head -->
<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>  
<!-- /head -->


  <!-- Page Content -->
  <div class="container">
    <div id="content-head" class="py-5 text-left">
      <!-- <img class="d-block mx-auto mb-4" src="./image/bootstrap-solid.svg" alt="" width="72" height="72"> -->
      <h2>회원 정보</h2>
      <div id="location">
        <ul class="list-inline">
          <li>회원정보</li>
          <li class="last">내 정보 수정</li>
        </ul>
      </div>
      <!-- <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p> -->
    </div>

	<!-- user-aside -->
	<c:import url="/WEB-INF/views/include/user-aside.jsp"></c:import>  
	<!-- /user-aside-->

      <div class="col-md-10 order-md-2">
        <h4 class="center-block text-center"><img class="signinLogo pb-5" src="${pageContext.request.contextPath}/assets/image/lettering-dark.png" alt="Logo" width="200"><br>내 정보 수정</h4>

        <form id="storeAdd-center" class="needs-validation center-block" novalidate action="${pageContext.request.contextPath}/user/storeAdd" method="post" enctype="multipart/form-data">
          <div class="row">

            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopDomain">유저 이름</label>
              <input type="text" class="form-control" id="shopDomain" placeholder="${uservo.userName }" required name="shopDomain" value="">
              <div class="invalid-feedback"></div>
            </div>
          </div>

          <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopName">비밀번호</label>
              <input type="text" class="form-control" id="shopName" placeholder="${uservo.phoneNo }" required name="shopTitle">
              <div class="invalid-feedback"></div>
            </div>
          </div>
          
           <div class="row">
            <div id="div-center" class="col-md-5 mb-3">
              <label for="shopName">핸드폰 번호</label>
              <input type="text" class="form-control" id="shopName" placeholder="${uservo.phoneNo }" required name="shopTitle">
              <div class="invalid-feedback"></div>
            </div>
          </div>                   

          <div class="form-row text-center">
            <div class="col-12" >
              <button id="btn-submit" class="btn btn-primary col-md-2" type="submit">정보수정</button>
            </div>
          </div>
          <input type = "hidden" name="userNo" value="${userNo}">

        </form>
      </div>
    </div>
  </div>
  <!-- /. Page Content -->


 <!-- /.Footer -->
<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
 <!-- /.Footer -->


</body>

</html>