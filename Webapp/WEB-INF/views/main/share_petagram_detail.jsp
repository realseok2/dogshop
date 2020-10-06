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
	
	<title>share-main</title>
	
	<!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath }/assets/css/common.css" rel="stylesheet">
	
	<link href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.modal.css" rel="stylesheet">
	
</head>

<body class="bg-light">

	<!-- header -->
		<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->

  <!-- Page Content -->
  <!-- ================================여기 부분부터 내용이 달라집니다.================================ -->
  <div class="container mt-5 pt-4">
    <header class="py-1 mt-4">
      <h2 class="display-5"><a href="${pageContext.request.contextPath }/shareMain">반려동물 자랑하기</a></h2>
      <hr class="mb-1">
    </header>    

    <div class="share-petagram-detail-wrap circle-rounded">

		<c:forEach items="${selectDetail }" var="result" varStatus="status">
		
	      <div class="img-area">      
	        <figure class="snip1273 pointer-cursor">
	          <img style="background-image:url('${pageContext.request.contextPath }/dogshop/${result.shareImg}')">
	          <figcaption>
	     
	            <div class="detail-main-img">
	              <div>                
	                -Name
	                <div style="width: 80%; float: right;">${result.dogName }</div>           
	              </div>
	
	              <div>
	                -Type
	                <div style="width: 80%; float: right;">${result.dogType }</div>               
	              </div>
	
	              <div>
	                -Age
	                <div style="width: 80%; float: right;">${result.dogAge } 살</div>  
	              </div>
	
	              <div>
	                -Weight
	                <div style="width: 80%; float: right;">${result.dogWeight } kg</div>  
	              </div>
	
	              <div>
	                -Etc
	                <div style="width: 80%; float: right;">${result.dogEtc }</div>  
	              </div>
	
	            </div>
	
	          </figcaption>
	        </figure>     
	      </div>
		</c:forEach>

      <div class="detail-wrap-content">

        <!-- detail-content-header -->
        <div class="detail-content-header">
        	<c:forEach items="${selectDetail }" var="result" varStatus="status">
        	
	          <div class="share-basic share-font-weight">
	            # ${result.id }
	            <button type="button" class="etc-basic" style="float: right; border: 0; outline: 0; background-color: #f8f9fa;"><img src="${pageContext.request.contextPath }/assets/image/etc-icon.png"></button>
	          </div>
          	</c:forEach>
        </div>
        <!-- //detail-content-header -->

        <!-- detail-content-body-top -->
        <div class="detail-content-body-top">
          <c:forEach items="${selectDetail }" var="result" varStatus="status">
             <div class="share-basic share-font-weight"># ${result.id } : ${result.content }</div>
          </c:forEach>
          
          <div><button type="button" style="outline: 0; border: 0; color: #ff00ff; background-color: #f8f9fa;">[댓글 모두 보기]</button></div>
        
        <div id="shareReplyListArea"></div>
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
          <c:forEach items="${selectDetail }" var="result">
          	<div class="share-basic" style="color: gray;">[${result.regDate }]</div>
          </c:forEach>
          
        </div>
        <!-- //detail-content-body-bottom -->

        <!-- detail-content-footer -->
        <div class="detail-content-footer">
     		<form action="${pageContext.request.contextPath }/replyAdd">
     		
     			<c:if test="${session ne null }">
     				<c:forEach items="${selectDetail }" var="result">
     					<input type="hidden" value="${result.shareNo }" id="input-shareNo" name="shareNo">
     				</c:forEach>     				
   					<input type="hidden" value="${shareReplyVo.replyNo }" id="input-replyNo" name="replyNo">
   					<input type="hidden" value="${session.userNo }" id="input-userNo" name="userNo">
     				<input type="hidden" value="${session.userId }" id="input-replyId" name="replyId">
	     			<textarea rows="3" id="input-replyContent" name="replyContent" style="width: 87.5%; height: 100%; border: 0; outline: 0; background-color: #f8f9fa;" placeholder="  댓글달기.."></textarea>
	          		<button type="button" class="btn-sm btn-primary" id="btnSubmit" style="margin-right: 0.5%; float: right; height: 100%; border: 0; outline: 0; background-color: #f8f9fa; color: black;">게시</button>
     			</c:if>
     			
     			<c:if test="${session eq null }">
     				<div class="text-center pt-4"><a href="${pageContext.request.contextPath }/user/loginForm">로그인을 해주세요.</a></div>
     			</c:if>
     		
     		</form>
     		
        </div>
        <!-- //detail-content-footer     -->

      </div>
    
    </div>


    <hr>

    <p 
ass="mt-4 mb-4">
		<c:forEach items="${selectDetail }" var="result">
			[<strong> ${result.id } </strong>]님의 게시물 더 보기
		</c:forEach>
    </p>

    <div class="row another-img mb-5">
    	<c:choose>
    	    		
    		<c:when test="${fn:length(usList) == 1 }">
    			<div class="center-block pt-4 mt-5 pb-4 mb-4">다른 게시물이 없습니다.</div>
    		</c:when>
	    		
    		<c:otherwise>
	    		<c:forEach items="${usList }" var="result">
		          <div class="col-md-4">
		            <figure class="snip1273 pointer-cursor">
		             <img src="${pageContext.request.contextPath }/dogshop/${result.shareImg}">
		              <figcaption>
		                <div class="detail-main-img mt-5">
		                  <div>                
		                    -Name
		                    <div style="width: 70%; float: right;">${result.dogName }</div>           
		                  </div>
		    
		                  <div>
		                    -Type
		                    <div style="width: 70%; float: right;">${result.dogType }</div>               
		                  </div>
		    
		                  <div>
		                    -Age
		                    <div style="width: 70%; float: right;">${result.dogAge }살</div>  
		                  </div>
		    
		                  <div>
		                    -Weight
		                    <div style="width: 70%; float: right;">${result.dogWeight }kg</div>  
		                  </div>
		    
		                  <div>
		                    -Etc
		                    <div style="width: 70%; float: right;">${result.dogEtc }</div>  
		                  </div>
		    
		                </div>           
		              </figcaption>
		           </figure>
		          </div>	
	          </c:forEach>
          </c:otherwise>          
       </c:choose>
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






<script type="text/javascript">
	$(document).ready(function() {

		//전체리스트 불러오기
		fetchList();

	});

	//글쓰기 버튼 클릭할 때
	$("#btnSubmit").on("click", function() {

		//이벤트 체크
		console.log("글쓰기 버튼 클릭");
		event.preventDefault();

		//데이터 수집 (content는 데이터 수집을 하는 다른 방식일 뿐 두 방법 모두 사용 가능합니다.)
		var shareNo = $("#input-shareNo").val();
		var replyNo = $("#input-replyNo").val();
		var userNo = $("#input-userNo").val();
		var replyId = $("#input-replyId").val();
		var replyContent = $("#input-replyContent").val();
		
		var shareReplyVo = {
			shareNo : shareNo,
			replyNo : replyNo,
			userNo : userNo,
			replyId : replyId,
			replyContent : replyContent
		};

		console.log(shareReplyVo);

		//데이터 전송
		$.ajax({

			url : "${pageContext.request.contextPath }/write/{shareNo}", //위치 확인하세요	
			type : "Post", //항상post방식을 사용하세요.
			contentType : "application/json",
			data : JSON.stringify(shareReplyVo),

			//데이터 받을 때 사용하는 옵션
			dataType : "json",
			success : function(shareReplyVo) {

				console.log(shareReplyVo)
				/*성공시 처리해야될 코드 작성*/
				render(shareReplyVo, "up");
				$("#input-shareNo").val("");
				$("#input-replyNo").val("");
				$("#input-userNo").val("");
				$("#input-replyId").val("");
				$("#input-replyContent").val("");
			},
			error : function(XHR, status, error) {
				console.error(request.status + " : " + error);
			}

		});

	});

	//전체리스트 불러오기
	function fetchList() {
		$.ajax({
			url : "${pageContext.request.contextPath }/detailList{shareNo}", //위치 확인하세요	
			type : "Post", //항상post방식을 사용하세요.
			//contentType : "application/json",
			//data : {name: ”홍길동"},

			//데이터 받을 때 사용하는 옵션
			dataType : "json",
			success : function(drList) {
				console.log(drList);
				/*성공시 처리해야될 코드 작성*/
				//$("#shareReplyListArea").html("");
				for (var i = 0; i < drList.length; i++) {
					render(drList[i], "down");
				}
			},
			error : function(XHR, status, error) {
				console.error(request.status + " : " + error);
			}
		});
	};
 
	//리스트 그리기(1개씩)
	function render(shareReplyVo, direction) {
		var str = "";
	  	str += "<div class='share-basic share-font-weight'>";
	  	str += "	- " + session.userId + " : " + shareReplyVo.replyContent;
		str += "</div>";
	
		if (direction == "up") {
			$("#shareReplyListArea").prepend(str);
		} else if (direction == "down") {
			$("#shareReplyListArea").append(str);
		} else {
			console.log("direction 오류");
		}
	};
</script>









</html>