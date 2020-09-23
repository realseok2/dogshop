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
	<link href="${pageContext.request.contextPath}/assets/css/common.css?after" rel="stylesheet">

</head>

<body class="bg-light">

	<!-- header -->
	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->
	
	
	
	
	
	
	





 <!-- ================================여기 부분부터 내용이 달라집니다.================================ -->
  <div class="container mt-5 pt-4">
    <header class="py-1 mt-4">
      <h2 class="display-5">Share_Petagram
          <c:if test="${session ne null }">
             <button type="button" class="btn btn-link" data-toggle="modal" data-target=".productAdd" onclick = "location.href = '${pageContext.request.contextPath }/shareAdd' ">Share</button>
          </c:if></h2>
      <hr class="mb-1">
    </header>


    <h5 class="display-5">Celebrity</h5>
    <hr class="mb-1">

  


    <div id="demo" class="carousel slide" data-ride="carousel" data-interval="false">
      <div class="carousel-inner rounded">
      
		<c:forEach items="${sList }" var="result" varStatus="status">
			<c:if test="${status.first }">
        <div class="carousel-item active">
          <div class="row mb-5">
            <div class="share-petagram-img">


              
              <!-- share_petagram hearder -->
              <div class="share-basic share-font-weight">
                <img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "><button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' " style="border: 0; outline: 0;">${result.id }</button>
                <button type="button" class="etc-basic main-header"><img src="${pageContext.request.contextPath }/assets/image/close-icon.png"></button>
              </div>
              <!-- //share_petagram hearder -->


              <!-- share_petagram body-img -->
              <div class="share-body-img"><img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "></div>
              <!-- //share_petagram body-img -->

              <!-- share_petagram body-content -->
              <div class="share-body-content">
                <div class="share-basic">
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/reply-icon.png" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "></button>
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/direct-icon.png"></button>
                  <button type="button" class="etc-basic main-icon save-icon"><img src="${pageContext.request.contextPath }/assets/image/save-icon.png"></button>
                </div>
                <div class="share-basic"><strong>[publishing]님</strong>과 <strong>${result.hit }명</strong>이 좋아합니다.</div>
                <div class="share-basic share-font-weight"><strong>[${result.id }]</strong>${result.content }</div>
                <div><button type="button" class="replyArea" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' ">[댓글 8개 모두 보기]</button></div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/eternersunshine.PNG"><strong>web</strong> 웹</div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/jose.jpg"><strong>responsive</strong> 반응형</div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/jose.jpg"><strong>responsive</strong> 세번째줄</div>
                <div class="share-basic" style="color: gray;">${result.regDate }</div>
              </div>
              <!-- //share_petagram body-content -->





              <!-- share_petagram footer -->
              <div class="share-footer">
     
                <textarea rows="2" placeholder="  댓글달기.."></textarea>
                <button type="submit" class="btn-sm btn-primary" style="margin-right: 0.5%; float: right; height: 100%; border: 0; outline: 0; background-color: #f8f9fa; color: gray;">게시</button>
          
              </div>
              <!-- //share_petagram footer -->
              
           
            </div>
            
            <div class="share-petagram-img">


              
              <!-- share_petagram hearder -->
              <div class="share-basic share-font-weight">
                <img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "><button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' " style="border: 0; outline: 0;">${result.id }</button>
                <button type="button" class="etc-basic main-header"><img src="${pageContext.request.contextPath }/assets/image/close-icon.png"></button>
              </div>
              <!-- //share_petagram hearder -->


              <!-- share_petagram body-img -->
              <div class="share-body-img"><img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "></div>
              <!-- //share_petagram body-img -->

              <!-- share_petagram body-content -->
              <div class="share-body-content">
                <div class="share-basic">
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/reply-icon.png" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "></button>
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/direct-icon.png"></button>
                  <button type="button" class="etc-basic main-icon save-icon"><img src="${pageContext.request.contextPath }/assets/image/save-icon.png"></button>
                </div>
                <div class="share-basic"><strong>[publishing]님</strong>과 <strong>${result.hit }명</strong>이 좋아합니다.</div>
                <div class="share-basic share-font-weight"><strong>[${result.id }]</strong>${result.content }</div>
                <div><button type="button" class="replyArea" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' ">[댓글 8개 모두 보기]</button></div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/eternersunshine.PNG"><strong>web</strong> 웹</div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/jose.jpg"><strong>responsive</strong> 반응형</div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/jose.jpg"><strong>responsive</strong> 세번째줄</div>
                <div class="share-basic" style="color: gray;">${result.regDate }</div>
              </div>
              <!-- //share_petagram body-content -->





              <!-- share_petagram footer -->
              <div class="share-footer">
     
                <textarea rows="2" placeholder="  댓글달기.."></textarea>
                <button type="submit" class="btn-sm btn-primary" style="margin-right: 0.5%; float: right; height: 100%; border: 0; outline: 0; background-color: #f8f9fa; color: gray;">게시</button>
          
              </div>
              <!-- //share_petagram footer -->
              
           
            </div>
            
            <div class="share-petagram-img">


              
              <!-- share_petagram hearder -->
              <div class="share-basic share-font-weight">
                <img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "><button type="button" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' " style="border: 0; outline: 0;">${result.id }</button>
                <button type="button" class="etc-basic main-header"><img src="${pageContext.request.contextPath }/assets/image/close-icon.png"></button>
              </div>
              <!-- //share_petagram hearder -->


              <!-- share_petagram body-img -->
              <div class="share-body-img"><img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "></div>
              <!-- //share_petagram body-img -->

              <!-- share_petagram body-content -->
              <div class="share-body-content">
                <div class="share-basic">
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/reply-icon.png" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' "></button>
                  <button type="button" class="main-icon"><img src="${pageContext.request.contextPath }/assets/image/direct-icon.png"></button>
                  <button type="button" class="etc-basic main-icon save-icon"><img src="${pageContext.request.contextPath }/assets/image/save-icon.png"></button>
                </div>
                <div class="share-basic"><strong>[publishing]님</strong>과 <strong>${result.hit }명</strong>이 좋아합니다.</div>
                <div class="share-basic share-font-weight"><strong>[${result.id }]</strong>${result.content }</div>
                <div><button type="button" class="replyArea" onclick = "location.href = '${pageContext.request.contextPath }/shareDetail' ">[댓글 8개 모두 보기]</button></div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/eternersunshine.PNG"><strong>web</strong> 웹</div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/jose.jpg"><strong>responsive</strong> 반응형</div>
                <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/jose.jpg"><strong>responsive</strong> 세번째줄</div>
                <div class="share-basic" style="color: gray;">${result.regDate }</div>
              </div>
              <!-- //share_petagram body-content -->





              <!-- share_petagram footer -->
              <div class="share-footer">
     
                <textarea rows="2" placeholder="  댓글달기.."></textarea>
                <button type="submit" class="btn-sm btn-primary" style="margin-right: 0.5%; float: right; height: 100%; border: 0; outline: 0; background-color: #f8f9fa; color: gray;">게시</button>
          
              </div>
              <!-- //share_petagram footer -->
              
           
            </div>

		  </div>
		</div>
		</c:if>













 

		<c:if test="${status.index ne 0 }">
        <div class="carousel-item">

          <div class="row mb-5">
            <div class="share-petagram-img">
              <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg">아이디</div>
              <div class="share-body-img"><img src="${pageContext.request.contextPath }/assets/image/lolozouai03.jpg"></div>
              <div class="share-body-content">
                <div><button type="button" class="glyphicon glyphicon-heart-empty"></button> <button type="button" class="glyphicon glyphicon-comment"></button></div>
                <div><span class="share-font-weight">[petagram]</span>님과 <span class="share-font-weight">여러 명</span>이 좋아합니다.</div>
                <div><span class="share-font-weight">[petagram]</span>[어렵다ㅏ....]</div>
                <div><button type="button">[댓글 n개 모두 보기]</button></div>
                <div><span class="share-font-weight">[bebe]</span>[졸려ㅕㅕ....]</div>
                <div>[글 작성 후 지난 시간]</div>
              </div>
              <div class="share-footer">
                <div>[댓글달기...][게시]</div>
              </div>
            </div>

            <div class="share-petagram-img">
              <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg"> 아이디</div>
              <div class="share-body-img"><img src="${pageContext.request.contextPath }/assets/image/lolozouai02.jpg"></div>
              <div class="share-body-content">
                <div>[좋아요] [댓글]</div>
                <div><strong>[가장 최근에 좋아요 누른 사람 아이디]</strong>님과 <strong>여러 명</strong>이 좋아합니다.</div>
                <div><strong>[작성자아이디]</strong> [작성내용]</div>
                <div>[댓글 총 갯수]</div>
                <div><strong>[댓글작성자아이디]</strong>[댓글내용]</div>
                <div>[글 작성 후 지난 시간]</div>
              </div>
              <div class="share-footer">
                <div>[댓글달기...][게시]</div>
              </div>
            </div>

            <div class="share-petagram-img">
              <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg"> 아이디</div>
              <div class="share-body-img"><img src="${pageContext.request.contextPath }/assets/image/lolozouai04.jpg"></div>
              <div class="share-body-content">
                <div>[좋아요] [댓글]</div>
                <div><strong>[가장 최근에 좋아요 누른 사람 아이디]</strong>님과 <strong>여러 명</strong>이 좋아합니다.</div>
                <div><strong>[작성자아이디]</strong> [작성내용]</div>
                <div>[댓글 총 갯수]</div>
                <div><strong>[댓글작성자아이디]</strong>[댓글내용]</div>
                <div>[글 작성 후 지난 시간]</div>
              </div>
              <div class="share-footer">
                <div>[댓글달기...][게시]</div>
              </div>
            </div>
          </div>
        </div>
        </c:if>

	  </c:forEach>
      <!-- 왼쪽 오른쪽 화살표 버튼 -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <!-- <span>Previous</span> -->
      </a>
      
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <!-- <span>Next</span> -->
      </a>
      <!-- / 화살표 버튼 끝 -->
      </div>
      
        
    
    </div>
  
 


<!-- ==================================================================================================================================================== -->
<!-- ==================================================================================================================================================== -->


    <h5 class="display-5">First_Appear</h5>
    <hr class="mb-1 mb-5">

    <div>
      <div class="row mb-5">
        <div class="share-petagram-img">
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg">아이디</div>
          <div class="share-body-img"><img src="${pageContext.request.contextPath }/assets/image/lolozouai05.jpg"></div>
          <div class="share-body-content">
            <div>
              <button style="border: 0; outline: 0;" type="button"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
              <button style="border: 0; outline: 0;" type="button"><img src="${pageContext.request.contextPath }/assets/image/reply-icon.png"></button>
              <button style="border: 0; outline: 0;" type="button"><img src="${pageContext.request.contextPath }/assets/image/direct-icon.png"></button>
            </div>
            <div><span class="share-font-weight">[petagram]</span>님과 <span class="share-font-weight">여러 명</span>이 좋아합니다.</div>
            <div><span class="share-font-weight">[petagram]</span>[어렵다ㅏ....]</div>
            <div>[댓글 총 갯수]</div>
            <div><span class="share-font-weight">[bebe]</span>[졸려ㅕㅕ....]</div>
            <div>[글 작성 후 지난 시간]</div>
          </div>
          <div class="share-footer">
            <div>[댓글달기...][게시]</div>
          </div>
        </div>

        <div class="share-petagram-img">
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg"> 아이디</div>
          <div class="share-body-img"><img src="${pageContext.request.contextPath }/assets/image/lolozouai03.jpg"></div>
          <div class="share-body-content">
            <div>[좋아요] [댓글]</div>
            <div><strong>[가장 최근에 좋아요 누른 사람 아이디]</strong>님과 <strong>여러 명</strong>이 좋아합니다.</div>
            <div><strong>[작성자아이디]</strong> [작성내용]</div>
            <div>[댓글 총 갯수]</div>
            <div><strong>[댓글작성자아이디]</strong>[댓글내용]</div>
            <div>[글 작성 후 지난 시간]</div>
          </div>
          <div class="share-footer">
            <div>[댓글달기...][게시]</div>
          </div>
        </div>

        <div class="share-petagram-img">
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg"> 아이디</div>
          <div class="share-body-img"><img src="${pageContext.request.contextPath }/assets/image/lolozouai02.jpg"></div>
          <div class="share-body-content">
            <div>[좋아요] [댓글]</div>
            <div><strong>[가장 최근에 좋아요 누른 사람 아이디]</strong>님과 <strong>여러 명</strong>이 좋아합니다.</div>
            <div><strong>[작성자아이디]</strong> [작성내용]</div>
            <div>[댓글 총 갯수]</div>
            <div><strong>[댓글작성자아이디]</strong>[댓글내용]</div>
            <div>[글 작성 후 지난 시간]</div>
          </div>
          <div class="share-footer">
            <div>[댓글달기...][게시]</div>
          </div>
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
</body>


</html>