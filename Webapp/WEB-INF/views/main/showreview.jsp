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
          <input class="form-control mr-sm-4" type="text" placeholder="Search" aria-label="Search">
        </div>
        <div class="col-md-1 pl-1 pr-3">
          <button class="btn btn-primary my-2 my-sm-0 btn-block" type="submit">검 색</button>
        </div>
      </div>
      <!-- /. 컨텐츠 제목 -->

      <!-- 컨텐츠 내용 -->
      <div class="row mb-5">
        <div class="col-md-12">
          <!-- 공지사항 -->
          <div class="row mb-2">
            <div class="col-md-12">
              <table class="table text-center">
                <colgroup>
                  <col width="5%">
                  <col width="60%">
                  <col width="15%">
                  <col width="10%">
                  <col width="10%">
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col">별점</th>
                    <th scope="col">내용</th>
                    <th scope="col">날짜</th>
                    <th scope="col">작성자id</th>
                  </tr>
                </thead>
                <tbody>
                  	<c:forEach items ="${reviewList}"  var = "reviewListvo">
                  		<tr>
	                  		<td>
		                  		<span class="star-input">
			            			<span class="input">
							              <input type="checkbox" name="star-input" value="${reviewListvo.spoint}" id="p${reviewListvo.spoint*2}" checked>
							              <label for="p${reviewListvo.spoint*2}">${reviewListvo.spoint}</label>
							              </span>
							           	  <output for="star-input"><b>${reviewListvo.spoint}</b>점</output>
		            				</span></td>
	                  		<td>${reviewListvo.sdesc}</td>
	                  		<td>${reviewListvo.regdate}</td>
	                  		<td>${reviewListvo.id}</td>
                  		<tr>
                	</c:forEach>
                </tbody>
              </table>
            </div>
          </div>
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-7 text-center">
              &lt; 1 2 3 4 5 &gt;
            </div>
            <div class="col-md-2"></div>
          </div>
         
      <!-- /. 컨텐츠 내용 -->

		</div>
		</div>
		</div>
		</div>
    <!-- /. 컨텐츠 -->
  </main>

<!-- footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>  
<!-- /footer -->


</body>

</html>
