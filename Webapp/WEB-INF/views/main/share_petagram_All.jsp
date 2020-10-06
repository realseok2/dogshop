<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


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
	<link href="${pageContext.request.contextPath}/assets/css/common.css?after" rel="stylesheet">

</head>

<body class="bg-light">

	<!-- header -->
	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->
	

 <!-- ================================여기 부분부터 내용이 달라집니다.================================ -->
  <div class="container mt-5 pt-4">
    <header class="py-1 mt-4">
      <h2 class="display-5"><a href="${pageContext.request.contextPath }/shareMain">반려동물 자랑하기</a>
        <c:if test="${session ne null }">
          <button type="button" class="btn btn-link" data-toggle="modal" data-target=".productAdd" onclick = "location.href = '${pageContext.request.contextPath }/shareAdd' " style="float:right">작성하기</button>
        </c:if>
      </h2>
      <hr class="mb-1">
    </header>

    <h5 class="display-5">전체보기

		<div class="dropdown" style="float:right;">
		  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
		    순서
		    <span class="caret"></span>
		  </button>
		  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">좋아요 오름차순</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-2" href="#">좋아요 내림차순</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-3" href="#">업로드날짜 오름차순</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-4" href="#">업로드날짜 내림차순</a></li>
		  </ul>
		</div>






    </h5>
    <hr class="mb-1">
    
    
    <c:choose>
    	<c:when test="${empty hMap.hList }">
    		
    		<div class="mt-5" style="height: 222px;">
   				<h5  class="text-center" style="margin-top:30%;">등록된 게시물이 없습니다.</h5>
			</div>
    	</c:when>
    	
    	<c:otherwise>
    		<div class="row mb-4">
          
          
      		<c:forEach items="${hMap.hList }" var="result" varStatus="status">
          
	            <div class="share-petagram-img mb-4 mt-4">
	              <!-- share_petagram hearder -->
	              <div class="share-basic share-font-weight">
	                <button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' " style="border: 0; outline: 0; background-color:#f8f9fa"><strong># [${result.id }]</strong></button>
	                
	                <c:if test="${session ne null }">
	                	<c:if test="${session.userNo eq result.userNo }">
	                		<button type="button" class="etc-basic main-header" onclick = "location.href = '${pageContext.request.contextPath }/shareDelete/${result.shareNo }' ">
	                			<img src="${pageContext.request.contextPath }/assets/image/close-icon.png">
                			</button>
	    				</c:if>
	    			</c:if>            
	                
	                
	              </div>
	              <!-- //share_petagram hearder -->
		
	              <!-- share_petagram body-img -->
	              <div class="share-body-img"><img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" class="hover-cursor" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' "></div>
	              <!-- //share_petagram body-img -->
	
	              <!-- share_petagram body-content -->
	              <div class="share-body-content">
	                <div class="share-basic">
	                
	                
                  <c:choose>
                  	<c:when test="${result.liked}%2 == 0">
                  		<img src="${pageContext.request.contextPath }/assets/image/heart-icon.png">
                  	</c:when>
                  
                  	<c:otherwise>
                  		<img src="${pageContext.request.contextPath }/assets/image/full-heart-icon.png">
                  	</c:otherwise>
                  </c:choose>
	                  
	                  
	                  
	                  
	                  
	                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/reply-icon.png" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' "></button>
	                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/direct-icon.png"></button>
	                  <button type="button" class="etc-basic main-icon save-icon"><img src="${pageContext.request.contextPath }/assets/image/save-icon.png"></button>
	                </div>
	                <div class="share-basic"><strong>[publishing]님</strong>과 <strong>${result.hit }명</strong>이 좋아합니다.</div>
	                <div class="share-basic share-font-weight"><strong>[${result.id }]</strong>: ${result.content }</div>
	                <div><button type="button" class="replyArea" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' ">[댓글 8개 모두 보기]</button></div>
	                <div class="share-basic share-font-weight"><strong>- [web]</strong>: 웹</div>
	                <div class="share-basic share-font-weight"><strong>- [responsive]</strong>: 반응형</div>
	                <div class="share-basic share-font-weight"><strong>- [responsive]</strong>: 세번째줄</div>
	                <div class="share-basic" style="color: gray;">${result.regDate }</div>
	              </div>
	              <!-- //share_petagram body-content -->
	                  
	            </div>
           
              </c:forEach>
      
			</div>
    	</c:otherwise>
    </c:choose>
    
    
    
    
    
    
    
    
    
    
    

          
	</div>
	
	<div style="margin-left: 50%;">
	  <ul class="pagination pagination-lg">
  			<c:if test="${hMap.prev == true}">
				<li><a href="${pageContext.request.contextPath }/shareAll?crtPage=${hMap.startPageBtnNo-1}">◀</a></li>
			</c:if>

	    	<c:forEach begin="${hMap.startPageBtnNo }" end="${hMap.endPageBtnNo }" step="1" var="page">
				<c:choose>
					<c:when test="${param.crtPage == page }">
						<li class="active ml-3 mr-3">
							<a href="${pageContext.request.contextPath }/shareAll?crtPage=${page}">${page}</a>
						</li>									
					</c:when>
					<c:otherwise>
						<li>
							<div class="ml-3 mr-3">
								<a href="${pageContext.request.contextPath }/shareAll?crtPage=${page}">${page}</a>
							</div>
						</li>
					</c:otherwise>
				</c:choose>
				
			</c:forEach>

			<c:if test="${hMap.next == true}">
				<li><a href="${pageContext.request.contextPath }/shareAll?crtPage=${hMap.endPageBtnNo+1}">▶</a></li>
			</c:if>
	    
	    </ul>
	    
	  </div>
	
	
	
	
	
	
	
	
  

  <!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->



	<!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>
	<!-- /.Footer -->

	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
		
		
		
		
		<script type="text/javascript">			
			$("input:radio[name='full-heart-icon']:radio[value='heart']").prop('checked', true); // 선택하기
	
			$("input:radio[name='heart-icon']:radio[value='heart']").prop('checked', false); // 해제하기		
		</script>
		

		
</body>


</html>