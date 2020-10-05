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
		width:100px;
		height:50px;
	}
	.text_center{
		vertical-align: middle !important;
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
      <div class="row mb-12" style=margin-top:117px;>
        <div class="col-md-5"><h2>무료나눔</h2></div>
        <div class="col-md-4"></div>
        <form action="${pageContext.request.contextPath}/nanum" method="get">
        	<div class="form-group text-right">
				<input type="text" name="keyword" value="">
				<button  class="btn btn-primary " type="submit" id=btn_search>검색</button>
			</div>
        </form>
      </div>
	<!-- /. 컨텐츠 제목 -->
	
	 <div class="row mb-5">
        <div class="col-md-12">
          <!-- 공지사항 -->
          <div class="row mb-2">
            <div class="col-md-12">
              <table class="table text-center">
                <colgroup>
                  <col width="15%">
                  <col width="30%">
                  <col width="15%">
                  <col width="15%">
                  <col width="15%">
                  <col width="10%">
                </colgroup>
                <thead>
                  <tr>
                    <th scope="col">사진</th>
                    <th scope="col">제목</th>
                    <th scope="col">분야</th>
                    <th scope="col">지역</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                  </tr>
                </thead>
                <tbody>
                	<c:forEach items="${nList }" var="nanumVo">
	                    <tr>
	                    	<td><img class="img_size" src="${pageContext.request.contextPath}/dogshop/${nanumVo.img}"></td>
	                    	<td class="text_center"><a href="${pageContext.request.contextPath}/nanumPage?nanumNo=${nanumVo.nanumNo}" style=color:blue>${nanumVo.title }</a></td>
	                    	<td class="text_center">${nanumVo.groups }</td>
	                    	<td class="text_center">${nanumVo.area }</td>
	                    	<td class="text_center">${nanumVo.userName }</td>
	                    	<td class="text_center">${nanumVo.regdate }</td>
	                    </tr>
                    </c:forEach>
                </tbody>
				</table>
				
				<div class="text-center">
              		&lt; 1 2 3 4 5 &gt; 
              		<c:if test="${not empty session.userNo }">
              			<button type="button" class="btn btn-outline-dark"style=float:right onclick = "location.href = '${pageContext.request.contextPath }/nanumWriteForm' ">글 작성</button>
            		</c:if>
            	</div>
           		
       
				
				</div></div>	</div></div>
	
	
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