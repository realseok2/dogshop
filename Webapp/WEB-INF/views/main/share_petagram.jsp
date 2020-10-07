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
          <button type="button" class="btn btn-link" data-toggle="modal" data-target=".productAdd" style="float: right;" onclick = "location.href = '${pageContext.request.contextPath }/shareAdd' ">작성하기</button>
        </c:if>
      	<button type="button" class="btn btn-link" data-toggle="modal" data-target=".productAdd" style="float: right;" onclick = "location.href = '${pageContext.request.contextPath }/shareAll' ">전체보기</button>
      </h2>
      <hr class="mb-1">
    </header>




    <h5 class="display-5">인기순</h5>
    <hr class="mb-1">

<!-- -------------------------------------------------------------------------------------------------------------------------------- -->  
		<c:choose>
			<c:when test="${empty cList }">
				<div class="text-center mt-5 pt-5 mb-5 pb-5" style="height: 169px;">등록된 게시물이 없습니다.</div>
			</c:when>
			
			<c:otherwise>
				<c:if test="${fn:length(cList)<4 }">
					<div id="demo" class="carousel slide" data-ride="carousel">
		   				<div class="carousel-inner rounded">
      
<!-- 캐러셀 메인 페이지----------------------------------------------------------------------------------------------------- -->
							<div class="carousel-item active">
		     	     			<div class="row mb-5">
		          
		       						<c:forEach items="${cList }" var="result" varStatus="status" begin="0" end="2">
			            				<div class="share-petagram-img">
			              					<!-- share_petagram hearder -->
			              					<div class="share-basic share-font-weight">
			                					<button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' " style="border: 0; outline: 0; background-color:#f8f9fa"><strong># [${result.id }]</strong></button>
			                					<c:if test="${session eq null }">
				                					<c:if test="${session.userNo eq result.userNo }">	
				                						<button type="button" class="etc-basic main-header"  onclick = "location.href = '${pageContext.request.contextPath }/shareDelete/${result.shareNo}'">
				                							<img src="${pageContext.request.contextPath }/assets/image/close-icon.png">
				                						</button>
				              						</c:if>
			              						</c:if>
			              					
			              					</div>
			              					<!-- //share_petagram hearder -->
				
							              	<!-- share_petagram body-img -->
							              	<div class="share-body-img">
							              		<img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" class="hover-cursor" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' ">
						              		</div>
							              	<!-- //share_petagram body-img -->
			
			              					<!-- share_petagram body-content -->
			              					<div class="share-body-content">
			                					<div class="share-basic">
									                <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/full-heart-icon.png"></button>
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
							</div>
				
							<c:if test="${fn:length(cList) > 4 }">
		   						<!-- 왼쪽 오른쪽 화살표 버튼 -->
	      
			      				<a class="carousel-control-prev" href="#demo" data-slide="prev">
			        				<span aria-hidden="true" style="margin-right: 94%; padding-top: 100%; padding-bottom: 100%"><img src="${pageContext.request.contextPath }/assets/image/prev-icon.png" class="share-prev" ></span>
			        				<!-- <span>Previous</span> -->
			      				</a>
			      
			      				<a class="carousel-control-next" href="#demo" data-slide="next">
			      					<span aria-hidden="true" style="margin-left: 102%; padding-top: 100%; padding-bottom: 100%"><img src="${pageContext.request.contextPath }/assets/image/next-icon.png" class="share-next"></span>
		      						<!-- <span>Next</span> -->
			      				</a>
			      				<!-- / 화살표 버튼 끝 -->
				
							</c:if>
						</div>
					</div>						
				</c:if>	      

<!-- //캐러셀 메인 페이지--------------------------------------------------------------------------------------------------- -->
						
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->
				
<!-- 캐러셀 메인 페이지--------------------------------------------------------------------------------------------------- -->				
				<c:if test="${fn:length(cList) > 3 }">
					<div id="demo" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner rounded">
							<div class="carousel-item active">
         							<div class="row mb-5">
         
      									<c:forEach items="${cList }" var="result" varStatus="status" begin="0" end="2">
            							<div class="share-petagram-img">
              								<!-- share_petagram hearder -->
              								<div class="share-basic share-font-weight">
								                <button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' " style="border: 0; outline: 0; background-color:#f8f9fa"><strong># [${result.id }]</strong></button>
								                
								                <c:if test="${session ne null }">
								                	<c:if test="${session.userNo eq result.userNo }">
								                		<button type="button" class="etc-basic main-header"  onclick = "location.href = '${pageContext.request.contextPath }/shareDelete/${result.shareNo}'"><img src="${pageContext.request.contextPath }/assets/image/close-icon.png"></button>
							                		</c:if>
							                	</c:if>
              								</div>
              								<!-- //share_petagram hearder -->
	
							              	<!-- share_petagram body-img -->
							              	<div class="share-body-img">
							              		<img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" class="hover-cursor" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' ">
							              	</div>
							              	<!-- //share_petagram body-img -->

							              	<!-- share_petagram body-content -->
							              	<div class="share-body-content">
							                	<div class="share-basic">
									                <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/full-heart-icon.png"></button>
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
							</div>
<!-- //캐러셀 메인 페이지--------------------------------------------------------------------------------------------------- -->
	
<!-- 캐러셀 다음 페이지----------------------------------------------------------------------------------------------------- -->

        						<div class="carousel-item">

         							<div class="row mb-5">
         								<c:forEach items="${cList }" var="result" varStatus="status" begin="3" end="5">
										<div class="share-petagram-img">
             
						              		<!-- share_petagram hearder -->
						              		<div class="share-basic share-font-weight">
						                		<button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' " style="border: 0; outline: 0; background-color:#f8f9fa"><strong># [${result.id }]</strong></button>
						                		
						                		<c:if test="${session ne null }">
						                			<c:if test="${session.userNo eq result.userNo }">
							                			<button type="button" class="etc-basic main-header"  onclick = "location.href = '${pageContext.request.contextPath }/shareDelete/${result.shareNo}'">
							                				<img src="${pageContext.request.contextPath }/assets/image/close-icon.png">
						                				</button>
						                			</c:if>
						                		</c:if>
						                		
						              		</div>
						              		<!-- //share_petagram hearder -->

							              		<!-- share_petagram body-img -->
								              	<div class="share-body-img">
							              			<img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' ">
								              	</div>
								              	<!-- //share_petagram body-img -->

								              	<!-- share_petagram body-content -->
								              	<div class="share-body-content">
								                	<div class="share-basic">
								                  		<button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/full-heart-icon.png"></button>
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
  								</div>
<!-- //캐러셀 다음 페이지--------------------------------------------------------------------------------------------------- -->

     							<!-- 왼쪽 오른쪽 화살표 버튼 -->
	      					<a class="carousel-control-prev" href="#demo" data-slide="prev">
       							<span aria-hidden="true" style="margin-right: 94%; padding-top: 100%; padding-bottom: 100%">
       								<img src="${pageContext.request.contextPath }/assets/image/prev-icon.png" class="share-prev" >
       							</span>
       							<!-- <span>Previous</span> -->
     							</a>
     
     							<a class="carousel-control-next" href="#demo" data-slide="next">
       							<span aria-hidden="true" style="margin-left: 102%; padding-top: 100%; padding-bottom: 100%">
       								<img src="${pageContext.request.contextPath }/assets/image/next-icon.png" class="share-next">
       							</span>
     								<!-- <span>Next</span> -->
     							</a>
     							<!-- / 화살표 버튼 끝 -->
						</div>
     
					</div>
				</c:if>
			</c:otherwise>			
		</c:choose>

<!-- ==================================================================================================================================================== -->
<!-- ==================================================================================================================================================== -->


    <h5 class="display-5">업로드 순</h5>
    <hr class="mb-1 mb-5">

<!-- -------------------------------------------------------------------------------------------------------------------------------- -->  
		<c:choose>
			<c:when test="${empty sList }">
				<div class="text-center mt-5 pt-5 mb-5 pb-5" style="height: 169px;">등록된 게시물이 없습니다.</div>
			</c:when>
			
			<c:otherwise>
				<c:if test="${fn:length(sList)<4 }">
					<div id="demo1" class="carousel slide" data-ride="carousel">
		   				<div class="carousel-inner rounded">
      
<!-- 캐러셀 메인 페이지----------------------------------------------------------------------------------------------------- -->
							<div class="carousel-item active">
		     	     			<div class="row mb-5">
		          
		       						<c:forEach items="${sList }" var="result" varStatus="status" begin="0" end="2">
			            				<div class="share-petagram-img">
			              					<!-- share_petagram hearder -->
			              					<div class="share-basic share-font-weight">
			                					<button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' " style="border: 0; outline: 0; background-color:#f8f9fa"><strong># [${result.id }]</strong></button>
			                					
			                					<c:if test="${session ne null }">
			                						<c:if test="${session.userNo eq result.userNo }">
			                							<button type="button" class="etc-basic main-header" onclick = "location.href = '${pageContext.request.contextPath }/shareDelete/${result.shareNo}' ">
					                						<img src="${pageContext.request.contextPath }/assets/image/close-icon.png">
				                						</button>
			                						</c:if>
			                					</c:if>
			                					
			                					
			              					</div>
			              					<!-- //share_petagram hearder -->
				
							              	<!-- share_petagram body-img -->
							              	<div class="share-body-img">
							              		<img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" class="hover-cursor" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' ">
						              		</div>
							              	<!-- //share_petagram body-img -->
			
			              					<!-- share_petagram body-content -->
			              					<div class="share-body-content">
			                					<div class="share-basic">
									                <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
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
							</div>
				
							<c:if test="${fn:length(sList) > 4 }">
		   						<!-- 왼쪽 오른쪽 화살표 버튼 -->
	      
			      				<a class="carousel-control-prev" href="#demo1" data-slide="prev">
			        				<span aria-hidden="true" style="margin-right: 94%; padding-top: 100%; padding-bottom: 100%"><img src="${pageContext.request.contextPath }/assets/image/prev-icon.png" class="share-prev" ></span>
			        				<!-- <span>Previous</span> -->
			      				</a>
			      
			      				<a class="carousel-control-next" href="#demo1" data-slide="next">
			      					<span aria-hidden="true" style="margin-left: 102%; padding-top: 100%; padding-bottom: 100%"><img src="${pageContext.request.contextPath }/assets/image/next-icon.png" class="share-next"></span>
		      						<!-- <span>Next</span> -->
			      				</a>
			      				<!-- / 화살표 버튼 끝 -->
				
							</c:if>
						</div>
					</div>						
				</c:if>	      

<!-- //캐러셀 메인 페이지--------------------------------------------------------------------------------------------------- -->
						
<!-- -------------------------------------------------------------------------------------------------------------------------------- -->
				
<!-- 캐러셀 메인 페이지--------------------------------------------------------------------------------------------------- -->				
				<c:if test="${fn:length(sList) > 3 }">
					<div id="demo1" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner rounded">
							<div class="carousel-item active">
         							<div class="row mb-5">
         
      									<c:forEach items="${sList }" var="result" varStatus="status" begin="0" end="2">
            							<div class="share-petagram-img" id="imgline">
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
							              	<div class="share-body-img">
							              		<img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" class="hover-cursor" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' ">
							              	</div>
							              	<!-- //share_petagram body-img -->

							              	<!-- share_petagram body-content -->
							              	<div class="share-body-content">
							                	<div class="share-basic">
							                  		<button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
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
							</div>
<!-- //캐러셀 메인 페이지--------------------------------------------------------------------------------------------------- -->
	
<!-- 캐러셀 다음 페이지----------------------------------------------------------------------------------------------------- -->

        						<div class="carousel-item">

         							<div class="row mb-5">
         								<c:forEach items="${sList }" var="result" varStatus="status" begin="3" end="5">
										<div class="share-petagram-img">
             
						              		<!-- share_petagram hearder -->
						              		<div class="share-basic share-font-weight">
						                		<button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' " style="border: 0; outline: 0; background-color:#f8f9fa"><strong># [${result.id }]</strong></button>
						                		
						                		<c:if test="${session ne null }">
						                			<c:if test="${session.userNo eq result.userNo }">
						                				<button type="button" class="etc-basic main-header" onclick = "location.href = '${pageContext.request.contextPath }/shareDelete/${result.shareNo}'">
								                			<img src="${pageContext.request.contextPath }/assets/image/close-icon.png">
								                		</button>
						                			</c:if>
						                		</c:if>
						                		
						                		
						              		</div>
						              		<!-- //share_petagram hearder -->

							              		<!-- share_petagram body-img -->
								              	<div class="share-body-img">
							              			<img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail/${result.shareNo }/${result.userNo }' ">
								              	</div>
								              	<!-- //share_petagram body-img -->

								              	<!-- share_petagram body-content -->
								              	<div class="share-body-content">
								                	<div class="share-basic">
								                  		<button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
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
  								</div>
<!-- //캐러셀 다음 페이지--------------------------------------------------------------------------------------------------- -->

     							<!-- 왼쪽 오른쪽 화살표 버튼 -->
	      					<a class="carousel-control-prev" href="#demo1" data-slide="prev">
       							<span aria-hidden="true" style="margin-right: 94%; padding-top: 100%; padding-bottom: 100%">
       								<img src="${pageContext.request.contextPath }/assets/image/prev-icon.png" class="share-prev" >
       							</span>
       							<!-- <span>Previous</span> -->
     							</a>
     
     							<a class="carousel-control-next" href="#demo1" data-slide="next">
       							<span aria-hidden="true" style="margin-left: 102%; padding-top: 100%; padding-bottom: 100%">
       								<img src="${pageContext.request.contextPath }/assets/image/next-icon.png" class="share-next">
       							</span>
     								<!-- <span>Next</span> -->
     							</a>
     							<!-- / 화살표 버튼 끝 -->
						</div>
     
					</div>
				</c:if>
			</c:otherwise>			
		</c:choose>
	</div>

<!-- ==================================================================================================================================================== -->
<!-- ==================================================================================================================================================== -->
<!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->

	<!-- /.Footer -->
	<c:import url="/WEB-INF/views/include/main-footer.jsp"></c:import>
	<!-- /.Footer -->

	<!-- Bootstrap core JavaScript -->
	<script src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/assets/bootstrap/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
		
		
		
		
		<script type="text/javascript">
		
		
		$("input:radio[name='full-heart-icon']:radio[value='heart']").prop('checked', true); // 선택하기

		$("input:radio[name='heart-icon']:radio[value='heart']").prop('checked', false); // 해제하기
		
		
		</script>
		
		
		
		
</body>


</html>