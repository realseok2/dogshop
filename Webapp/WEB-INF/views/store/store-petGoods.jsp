<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>매장 반려동물 용품</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Common CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

</head> 

<body class="bg-light">

  <!-- head -->
	<c:import url="/WEB-INF/views/include/store-header.jsp"></c:import>  
<!-- /head -->
  
    <!-- 컨텐츠 -->
    <!-- ================================여기 부분부터 내용이 달라집니다.================================ -->
    <div class="container">
      <header class="py-1 mt-4">
      	<c:if test="${sMap.shopVo.shopNo == session.shopNo }">
           	<button type="button" class="btn btn-outline-dark" data-toggle="modal" data-target=".productAdd" style=float:right>상품 추가</button>
        </c:if>
        <h2 class="display-5">Pet Supplies</h2>
           
        <hr class="mb-1">
      </header>


      <div>
        <div class="row petSupplies-img mb-5">
          <div class="col-md-4 petSupplies-intro mt-5">
            
            <h5 class="ml4 text-center">
              <span class="letters letters-1">Healthy</span>
              <span class="letters letters-2">Delicious</span>
              <span class="letters letters-3">Safety</span>
              <span class="letters letters-4">Practical</span>
              <span class="letters letters-5">Beautiful</span>
              <span class="letters letters-6">Perfect</span>
            </h5>

            <div class="petSupplies-explain text-center">
              <p>건강하고 맛있는 먹거리와</p>
              <p>안전한 놀이용품,</p>
              <p>그리고 실용성과 아름다움을 겸비한</p>
              <p>의류, 생활용품을</p>
              <p>엄선하여 제공하고 있습니다.</p>
            </div>
            
          </div>

          <!-- 매장설명 구역 -->
          <div class="col-md-4 text-center">
            <div>
              <img class="storeMain-img rounded-circle" src="${pageContext.request.contextPath}/dogshop/${sMap.shopVo.shopLogo}">
            </div>

            <div class="mt-5 pt-3">
              <p>제품 구매 관련 문의사항은<br>내방 혹은 매장 연락처로 문의주시면<br>친절하고 자세한 상담이 가능합니다.</p>
            </div>
          </div>
          <!-- //매장설명 구역 -->
          
          <!-- 명함 구역 -->
          <div class="col-md-4">
            <div class="petSupplies-storeInfo mt-4">

              <ul class="list-unstyled">
                <li>매장명</li>
                <li><a href="">${sMap.shopVo.shopTitle }</a></li>
              </ul>

              <ul class="list-unstyled">
                <li>영업시간</li>
                <li>09:30 ~ 21:30</li>
              </ul>

              <ul class="list-unstyled">
                <li>전화번호</li>
                <li>${sMap.shopVo.shopNumber }</li>
              </ul>

              <ul class="list-unstyled">
                <li>주소</li>
                <li>${sMap.shopVo.shopAddress }</li>
              </ul>

              <ul class="list-unstyled">
                <li>이메일</li>
                <li>${sMap.shopVo.shopEmail }</li>
              </ul>

            </div>
          </div>
          <!-- //명함 구역 -->
        </div>




        <!-- 사진 추가시 for문 돌려야 하는 부분 -->
         <div class="row petSupplies-img">
        	<c:forEach var ="i" begin="1" end="${fn:length(sMap.boardList)}">
		          <!-- 열번째 사진 들어갈 곳 -->
		          <div class="col-md-4 pr-0" id="imgline" data-no="${sMap.boardList[fn:length(sMap.boardList)-i].boardNo}">
		            <figure class="snip1273 pointer-cursor" >
		             <img src="${pageContext.request.contextPath}/dogshop/${sMap.boardList[fn:length(sMap.boardList)-i].img}">
		              <figcaption>
		                <!-- 상품 삭제 버튼 -->

		                <div class="pt-0">
		                  <button type="button" class="close main-modal-icon rounded-circle" data-del="${sMap.boardList[fn:length(sMap.boardList)-i].boardNo }" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                  <button id="delXbutton"type="button" class="close main-modal-icon rounded-circle" data-del="${sMap.boardList[fn:length(sMap.boardList)-i].boardNo}" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		                </div>

		                <c:if test="${sMap.shopVo.shopNo == session.shopNo }">
			                <div class="pt-0">
			                  <button type="button" class="close main-modal-icon rounded-circle" data-del="${sMap.boardList[fn:length(sMap.boardList)-i].boardNo}" data-menuNo="${param.menuNo}"  data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			                </div>
		                </c:if>
		                <!-- //상품 삭제 버튼 -->
		                <p class="mt-5"></p>    
		                <h5 class="mt-5 pt-4">${sMap.shopVo.shopTitle }</h5>
		                                
		              </figcaption>
		           </figure>
		          </div>
	       </c:forEach>
	     </div>
	       
          <!-- //열번째 사진 들어갈 곳 -->
        <!-- //사진 추가시 for문 돌려야 하는 부분 -->
      </div>

    </div>
    <!-- 상품이미지 추가 모달 -->
      <form action="${pageContext.request.contextPath}/store/${session.shopDomain}/boardAdd" method="post"  enctype="multipart/form-data">
	    <div class="modal fade productAdd" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
	      <div class="modal-dialog modal-sm">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h4 class="modal-title" id="myModalLabel">상품추가</h4>
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	          </div>
	          <div class="modal-body text-left">
	            <!-- <img src="#" class="product-img" alt="상품이미지"> -->
	            <input type="file" name="imgFile">
	          </div>
	          <div class="modal-footer">
	            <button type="submit" class="btn btn-primary btn-sm">추가</button>
	            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">취소</button>
	          </div>
	          <input  type="hidden" value="${param.menuNo }" name="menuNo">
	        </div>
	      </div>
	    </div>
    </form>
    <!-- ================================여기까지가 내용이 달라지는 부분입니다.================================ -->
    <!-- /. 컨텐츠 -->

  </main>
  <!-- /. main -->



<!-- footer -->
	<c:import url="/WEB-INF/views/include/store-footer.jsp"></c:import>  
<!-- /footer -->

<script type="text/javascript">
	$(".close").on("click",function() {
		var del = $(this).data("del");
		var menuNo = $(this).data("menuno");
		
		
		$.ajax({
			url : "${pageContext.request.contextPath }/store/${shopDomain}/boardDel",
			type : "post",
			/* contentType : "application/json", */
			data : {
				del : del,
				menuNo : menuNo
			}, 
			dataType : "json",
			success : function (count){
				if(count = 1 ){
					$("#imgline[data-no='" + del + "']").remove();
				}
			}
		});
	});
</script>	 


  <!-- 첫번째칸 문자 강조 words wrapper -->
  <script>
    var ml4 = {};
    ml4.opacityIn = [0,1];
    ml4.scaleIn = [0.2, 1];
    ml4.scaleOut = 6;
    ml4.durationIn = 800;
    ml4.durationOut = 600;
    ml4.delay = 500;

    anime.timeline({loop: true})
      .add({
        targets: '.ml4 .letters-1',
        opacity: ml4.opacityIn,
        scale: ml4.scaleIn,
        duration: ml4.durationIn
      }).add({
        targets: '.ml4 .letters-1',
        opacity: 0,
        scale: ml4.scaleOut,
        duration: ml4.durationOut,
        easing: "easeInExpo",
        delay: ml4.delay
      }).add({
        targets: '.ml4 .letters-2',
        opacity: ml4.opacityIn,
        scale: ml4.scaleIn,
        duration: ml4.durationIn
      }).add({
        targets: '.ml4 .letters-2',
        opacity: 0,
        scale: ml4.scaleOut,
        duration: ml4.durationOut,
        easing: "easeInExpo",
        delay: ml4.delay
      }).add({
        targets: '.ml4 .letters-3',
        opacity: ml4.opacityIn,
        scale: ml4.scaleIn,
        duration: ml4.durationIn
      }).add({
        targets: '.ml4 .letters-3',
        opacity: 0,
        scale: ml4.scaleOut,
        duration: ml4.durationOut,
        easing: "easeInExpo",
        delay: ml4.delay
      }).add({
        targets: '.ml4 .letters-4',
        opacity: ml4.opacityIn,
        scale: ml4.scaleIn,
        duration: ml4.durationIn
      }).add({
        targets: '.ml4 .letters-4',
        opacity: 0,
        scale: ml4.scaleOut,
        duration: ml4.durationOut,
        easing: "easeInExpo",
        delay: ml4.delay
      }).add({
        targets: '.ml4 .letters-5',
        opacity: ml4.opacityIn,
        scale: ml4.scaleIn,
        duration: ml4.durationIn
      }).add({
        targets: '.ml4 .letters-5',
        opacity: 0,
        scale: ml4.scaleOut,
        duration: ml4.durationOut,
        easing: "easeInExpo",
        delay: ml4.delay
      }).add({
        targets: '.ml4 .letters-6',
        opacity: ml4.opacityIn,
        scale: ml4.scaleIn,
        duration: ml4.durationIn
      }).add({
        targets: '.ml4 .letters-6',
        opacity: 0,
        scale: ml4.scaleOut,
        duration: ml4.durationOut,
        easing: "easeInExpo",
        delay: ml4.delay
      }).add({
        targets: '.ml4',
        opacity: 0,
        duration: 500,
        delay: 500
      });
  </script>

</body>

</html>