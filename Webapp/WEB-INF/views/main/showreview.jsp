<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>

<head>

  <title>패타그램 - 메인</title>
  
  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/assets/css/common2.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

	<style>
		#move{
			padding:80px 0 0 0;
		}
	</style>
</head> 

<body class="bg-light">

<!-- head -->
	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>  
<!-- /head -->

  
    <!-- 컨텐츠 -->
    <div class="container">
      
      <!-- 컨텐츠 제목 -->
      <div id="move">
      <div class="row mb-4">
        <div class="col-md-5"><h2>별점리뷰</h2></div>
        <div class="col-md-3"></div>
        <div class="col-md-3 pl-0 pr-0">
          
        </div>
        <div class="col-md-1 pl-1 pr-3">
        
        </div>
      </div>
      <!-- /. 컨텐츠 제목 -->

      <!-- 컨텐츠 내용 -->
      <div class="row text-center">
		<c:forEach items ="${reviewList}"  var = "reviewListvo">
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="card h-100">
          <div class="card-img-top">
          <span class="star-input">
           			<span class="input">
			              <input type="checkbox" name="star-input" value="${reviewListvo.spoint}" id="p${reviewListvo.spoint*2}" checked>
			              <label for="p${reviewListvo.spoint}">${reviewListvo.spoint}</label>
			              </span>
			           	  <output for="star-input"><b>${reviewListvo.spoint}</b>점</output>
          				</span>
          </div>
          <div class="card-body">
            <h4 class="card-title">${reviewListvo.userName}</h4>
            <p class="card-text">${reviewListvo.sdesc}</p>
          </div>
          <div class="card-footer">
            ${reviewListvo.regdate}
          </div>
        </div>
      </div>
      </c:forEach>
    </div>
		</div>
		</div>
    <!-- /. 컨텐츠 -->
     <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
          </div>
  </main>

<!-- footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
<!-- /footer -->


</body>

</html>
