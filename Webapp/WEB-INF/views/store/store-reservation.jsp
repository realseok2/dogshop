<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>

<head>
  <title>매장 관리자 (예약관리)</title>
  	<!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Jquery Modal CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.modal.css" rel="stylesheet">

  <!-- Jquery UI CSS -->
  <link href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.css" rel="stylesheet">

  <!-- Custom Common CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/common2.css" rel="stylesheet">
  
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

</head> 

<body class="bg-light">

<!-- head -->
<c:import url="/WEB-INF/views/include/manager-header.jsp"></c:import>  

<!-- /head -->

    <!-- 컨텐츠 -->
    <div class="container">

      <!-- 컨텐츠 묶음 : 캘린더, 매장정보 -->
      <div class="row mb-3">

        <!-- 컨텐츠 내용 : 캘린더 -->
        <div class="col-md-4">
        </div>
        <!-- /. 컨텐츠 내용 : 캘린더 -->

        <!-- 컨텐츠 내용 : 매장 정보 -->
        <div class="col-md-8">
          
          <h2>${sMap.shopVo.shopTitle }</h2>
          
          <p class="mt-1"></p>
          
          <!-- 별표 점수매기기 -->
          <c:if test="${not empty spoint }">
	          <span class="star-input">
	            <span class="input">
	              <input type="radio" name="star-input" value="${spoint}" id="p${spoint*2}" checked><label for="p${spoint*2}">${spoint}</label>
	            </span>
	            
	                <output for="star-input"><b>${spoint}</b>점</output>
	            	
	          </span>
	          <!-- /. 별표 점수매기기 -->
	          <h6 class="reviewTitle">리뷰 51개 | 1개월 | 3개월 | 6개월</h6>
          </c:if>
          <!-- 예약설정 버튼 -->
          <p><a class="btn btn-secondary btn-example" href="#layer2" role="button">예약설정 &raquo;</a></p>
          <!-- /. 예약설정 버튼 -->

          <!-- 예약설정 -->
          <div class="dim-layer">
            <div class="dimBg"></div>
            <div id="layer2" class="pop-layer pop-layer2">
              <div class="pop-container">
                <div class="pop-conts">
                  <!-- 예약팝업 -->
                  <div class="btn-l">
                    <h4>예약설정</h4>
                  </div>
                  <div class="pop-close-x">
                    <a type="button" class="close btn-layerClose" aria-label="Close" href="#"><span aria-hidden="true">&times;</span></a>
                  </div>
                  <div class="px-5 mb-3">
                    <input type="text" class="form-control mb-3" id="adminDateResult" placeholder="날짜를 선택하세요.">
                  </div>
                  <div id="adminCalendar" class="px-5 mb-3"></div>
                  <div class="px-5 mb-3">
                    <table class="table table-sm text-center">
                      <thead>
                        <tr><th scope="col" colspan="2">예약가능시간</th></tr>
                      </thead>
                      <tbody>
                      	<c:forEach  var="i" begin="8" end="19" step="2">
	                      	<c:if test="${i<10 }">
	                			<tr><td><label class="m-0"><input type="checkbox" ${StorereservationVo.display eq 1 ? 'checked':''} class="mr-2" name="adminTimeSetting" data-time="0${i }:00">0${i }:00</label></td>
	                			<td><label class="m-0"><input type="checkbox" ${StorereservationVo.display eq 1 ? 'checked':''} class="mr-2" name="adminTimeSetting" data-time="0${i+1 }:00">0${i+1 }:00</label></td></tr>
	                        </c:if>
	                      	<c:if test="${i>=10 }">
	                        	<tr><td><label class="m-0"><input type="checkbox" ${StorereservationVo.display eq 1 ? 'checked':''} class="mr-2" name="adminTimeSetting" data-time="${i }:00">${i }:00</label>
	                        	<td><label class="m-0"><input type="checkbox" ${StorereservationVo.display eq 1 ? 'checked':''} class="mr-2" name="adminTimeSetting" data-time="${i+1 }:00">${i+1 }:00</label></td></tr>
                      		</c:if>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  <div class="btn-r px-5 text-center">
                    <a class="btn btn-primary btn-sm btn-layerClose ml-2 px-3" href="#" role="button">확인</a>
                    <a class="btn btn-secondary btn-sm btn-layerClose ml-2 px-3" href="#" role="button">닫기</a>
                  </div>
                  <!-- /. 예약팝업 -->
                </div>
              </div>
            </div>
          </div>
          <!-- /. 예약설정 -->

        </div>
        <!-- /. 컨텐츠 내용 : 매장 정보 -->

      </div>
      <!-- /. 컨텐츠 묶음 : 캘린더, 매장정보 -->

      <!-- 컨텐츠 묶음 : 예약 내역 -->
      <div class="row mb-5">

        <!-- 컨텐츠 내용 : 예약 내역 -->
        <div class="col-md-12">
          <h2 class="mb-3">예약 내역</h2>
          
          <table class="table table-hover text-center">
            <thead>
              <tr>
              	<th scope="col">No</th>
              	<th scope="col">고 객 명</th>
              	<th scope="col">날 짜</th>
              	</tr>
            </thead>
            <tbody>
				<c:if test="${not empty sMap.RList }">
					<c:forEach var="i" begin="1" end="${fn:length(sMap.RList)}">
						<tr>
							<th scope="row">${i }</th>
							<td>${sMap.RList[i-1].username}</td>
							<td>${sMap.RList[i-1].regdate}</td>
						</tr>
					</c:forEach>
				</c:if>
            </tbody>
          </table>

        </div>
        <!-- /. 컨텐츠 내용 : 예약 내역 -->

      </div>
      <!-- /. 컨텐츠 묶음 : 예약 내역 -->

    </div>
    <!-- /. 컨텐츠 -->

  </main>
  <!-- /. main -->

<!-- footer -->
<c:import url="/WEB-INF/views/include/store-footer.jsp"></c:import>  
<!-- /footer -->


  <!-- Jquery UI javaScript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/datepicker-ko.js"></script>

  <!-- custom javascript -->
  <script src="${pageContext.request.contextPath}/assets/bootstrap/js/common.js"></script>
</body>


<script type="text/javascript">
	$(".mr-2").on("click",function() {
		var regdate = adminDateResult.val() + " "+ $(this).data("time");

		$.ajax({
			url : "${pageContext.request.contextPath }/store/${shopDomain}/read",
			type : "post",
			/* contentType : "application/json", */
			data : {
				regdate : regdate
			},
			dataType : "json"
			});
	})
</script>

</html>
