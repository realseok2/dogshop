<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

    <div class="share-petagram-detail-wrap circle-rounded">



      <div class="img-area">      
        <figure class="snip1273 pointer-cursor">
          <img style="background-image:url('${pageContext.request.contextPath }/assets/image/lalaland.jpg')">
          <figcaption>
     
            <div class="detail-main-img">
              <div>                
                -Name
                <div style="width: 80%; float: right;">두부</div>           
              </div>

              <div>
                -Type
                <div style="width: 80%; float: right;">포메라이언</div>               
              </div>

              <div>
                -Age
                <div style="width: 80%; float: right;">1살</div>  
              </div>

              <div>
                -Weight
                <div style="width: 80%; float: right;">2kg</div>  
              </div>

              <div>
                -Etc
                <div style="width: 80%; float: right;">졸귀탱...</div>  
              </div>

            </div>

          </figcaption>
        </figure>     
      </div>













      <div class="detail-wrap-content">

        <!-- detail-content-header -->
        <div class="detail-content-header">
          <div class="share-basic share-font-weight">
            <img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg">아이디
            <button type="button" class="etc-basic" style="float: right; border: 0; outline: 0; background-color: #f8f9fa;"><img src="${pageContext.request.contextPath }/assets/image/etc-icon.png"></button>
          </div>
        </div>
        <!-- //detail-content-header -->
        



        <!-- detail-content-body-top -->
        <div class="detail-content-body-top">
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/lolozouai.jpg">아이디 내용</div>
          <div><button type="button" style="outline: 0; border: 0; color: #ff00ff; background-color: #f8f9fa;">[댓글 n개 모두 보기]</button></div>
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/DiCaprio.jpg">아이디 댓글</div>
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/eraser.PNG">아이디 댓글</div>
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/eternersunshine.PNG">아이디 댓글</div>
          <div class="share-basic share-font-weight"><img src="${pageContext.request.contextPath }/assets/image/jose.jpg">아이디 댓글</div>
        </div>
        <!-- //detail-content-body-top -->

        <!-- detail-content-body-bottom -->
        <div class="detail-content-body-bottom">
          <div class="mt-3 share-basic">
            <button style="border: 0; outline: 0; background-color: #f8f9fa;" type="button"><img src="${pageContext.request.contextPath }/assets/image/heart-icon.png"></button>
            <button style="border: 0; outline: 0; background-color: #f8f9fa;" type="button"><img src="${pageContext.request.contextPath }/assets/image/reply-icon.png"></button>
            <button style="border: 0; outline: 0; background-color: #f8f9fa;" type="button"><img src="${pageContext.request.contextPath }/assets/image/direct-icon.png"></button>
            <button style="border: 0; outline: 0; background-color: #f8f9fa; float: right;" type="button" class="etc-basic"><img src="${pageContext.request.contextPath }/assets/image/save-icon.png"></button>
          </div>
          <div class="share-basic">[최근좋아요누른사람]님과 여러 명이 좋아합니다.</div>
          <div class="share-basic">[업로드 후 경과 시간]</div>
        </div>
        <!-- //detail-content-body-bottom -->



        <!-- detail-content-footer -->
        <div class="detail-content-footer">
     
          <textarea rows="3" style="width: 87.5%; height: 100%; border: 0; outline: 0; background-color: #f8f9fa;" placeholder="  댓글달기.."></textarea>
          <button type="submit" class="btn-sm btn-primary" style="margin-right: 0.5%; float: right; height: 100%; border: 0; outline: 0; background-color: #f8f9fa; color: black;">게시</button>
    
        </div>
        <!-- //detail-content-footer     -->

      </div>
    
    </div>







    <hr>







    <p class="mt-4 mb-4">[아이디]님의 게시물 더 보기</p>

    <div class="row another-img mb-5">
          <div class="col-md-4">
            <figure class="snip1273 pointer-cursor">
             <img src="${pageContext.request.contextPath }/assets/image/aboutTime.PNG">
              <figcaption>
                <div class="detail-main-img mt-5">
                  <div>                
                    -Name
                    <div style="width: 70%; float: right;">두부</div>           
                  </div>
    
                  <div>
                    -Type
                    <div style="width: 70%; float: right;">포메라이언</div>               
                  </div>
    
                  <div>
                    -Age
                    <div style="width: 70%; float: right;">1살</div>  
                  </div>
    
                  <div>
                    -Weight
                    <div style="width: 70%; float: right;">2kg</div>  
                  </div>
    
                  <div>
                    -Etc
                    <div style="width: 70%; float: right;">졸귀탱...</div>  
                  </div>
    
                </div>           
              </figcaption>
           </figure>
          </div>




          <div class="col-md-4">
            <figure class="snip1273 pointer-cursor">
             <img src="${pageContext.request.contextPath }/assets/image/DiCaprio.jpg">
              <figcaption>
                <div class="detail-main-img mt-5">
                  <div>                
                    -Name
                    <div style="width: 70%; float: right;">두부</div>           
                  </div>
    
                  <div>
                    -Type
                    <div style="width: 70%; float: right;">포메라이언</div>               
                  </div>
    
                  <div>
                    -Age
                    <div style="width: 70%; float: right;">1살</div>  
                  </div>
    
                  <div>
                    -Weight
                    <div style="width: 70%; float: right;">2kg</div>  
                  </div>
    
                  <div>
                    -Etc
                    <div style="width: 70%; float: right;">졸귀탱...</div>  
                  </div>
    
                </div>                  
              </figcaption>
           </figure>
          </div>



          <div class="col-md-4">
            <figure class="snip1273 pointer-cursor">
             <img src="${pageContext.request.contextPath }/assets/image/eraser.PNG">
              <figcaption>
                <div class="detail-main-img mt-5">
                  <div>                
                    -Name
                    <div style="width: 70%; float: right;">두부</div>           
                  </div>
    
                  <div>
                    -Type
                    <div style="width: 70%; float: right;">포메라이언</div>               
                  </div>
    
                  <div>
                    -Age
                    <div style="width: 70%; float: right;">1살</div>  
                  </div>
    
                  <div>
                    -Weight
                    <div style="width: 70%; float: right;">2kg</div>  
                  </div>
    
                  <div>
                    -Etc
                    <div style="width: 70%; float: right;">졸귀탱...</div>  
                  </div>
    
                </div>                   
              </figcaption>
           </figure>
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