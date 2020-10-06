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
	
	<link rel="icon" href="data:;base64,iVBORw0KGgo=">
	<!-- Bootstrap core CSS -->
	<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/assets/css/common.css" rel="stylesheet">
	
	
	<!-- 우리가쓸꺼 -->
	<link href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.modal.css" rel="stylesheet">
	
	<link href="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.css" rel="stylesheet">
	
	<script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery.min.js"></script>
			
	<script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/jquery-ui.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/assets/bootstrap/jquery/datepicker-ko.js"></script>
	
	<!-- 우리가볼꺼 End -->

</head>

<script type="text/javascript">

$(document).ready(function(){
	
	$(".dropdown-item").on("click", function(){
		
		var dogName = $(".buttonTxt").text();
		console.log("dogName : " + dogName);
		$.ajax({
			url : "${pageContext.request.contextPath}/addPageSelect",
			type : "post",
			/* contentType : "application/json", */
			data : {
				dogName : dogName
			},
			dataType : "json",
			success : function (data){
				console.log(data);
					$("#dogNo").val(data.dogNo);
				   	$("#dogName").val(data.dogName);
				   	$("#dogType").val(data.dogType);
				    $("#dogWeight").val(data.dogWeight);
				    $("#dogAge").val(data.dogAge);
				    $("#dogEtc").val(data.dogEtc);
				},
				error : function(request, status, error) {
					alert("code : " + request.status + "\n" + "message : " + request.responseText + "\n" + "error : " + error);
				}

			});
	});
	
});
	

function btnSubmitClick(){
	if($(".buttonTxt").text() == "반려견을 선택해 주세요."){
		alert("반려견을 선택해 주세요.");
		return false;
	}
	//action="${pageContext.request.contextPath}/add" method="post"
	
	var form = $("#form1"); 
	form.attr("action", "${pageContext.request.contextPath}/add");
	form.attr("method", "post");
	console.log("form : " + form);
	form.submit();
	
}
</script>

<body class="bg-light">

	<!-- header -->
	<c:import url="/WEB-INF/views/include/main-header.jsp"></c:import>
	<!-- header -->
	
	
	
	
	
	
	





  <!-- Page Content -->
  <!-- ================================여기 부분부터 내용이 달라집니다.================================ -->
  <div class="container mt-5 pt-4">
    <header class="py-1 mt-4">
      <h2 class="display-5"><a href="${pageContext.request.contextPath }/shareMain">Share_Petagram</a></h2>
      <hr class="mb-1">
    </header>

    <h5 class="display-5">Share to Us</h5>
    <hr class="mb-1">

    <div class="container">
      
      <div class="row">
          
        <div class="col-md-12">
              
          <form id="form1" name="form1" enctype="multipart/form-data">
          	  <input type="hidden" id="dogNo" name="dogNo" value="" />
			  <input type="hidden" id="dogName" name="dogName" value="" />
			  <input type="hidden" id="dogType" name="dogType" value="" />
			  <input type="hidden" id="dogWeight" name="dogWeight" value="" />
			  <input type="hidden" id="dogAge" name="dogAge" value="" />
			  <input type="hidden" id="dogEtc" name="dogEtc" value="" />
	          <!-- content input area -->
	          <div class="row mt-4">
	            <div class="col-md-10 mb-5 center-block">
	              <div>
                  <label for="petInfo" class="mb-3">Contents</label>



                 <div class="col-md-2 btn-group mr-5" style="float: right;">
                    <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle btn-dropdown buttonTxt" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">반려견을 선택해 주세요.</button>
                    <div class="dropdown-menu dropdown-menu-left">
                      <!-- 아이템추가: .dropdown-mypet-item.html() 변경 -->
                      
                      <c:forEach items="${aList}" var="result" varStatus="status">
						<button class="dropdown-item dropdown-mypet-item itemDog" type="button" value="${status.index}" >${result.dogName}</button>
					  </c:forEach>
                   
                    </div>
                  </div>

                </div>
	              <textarea class="form-control" rows="12" name= "content" placeholder="Please enter your details."></textarea>
	            </div>
	          </div>
	          <!-- //content input area -->
	
	          <hr class="mb-4">
	
	          <!-- file input area -->
	          <img id="div-center" src="" class="img-responsive" alt="">
	          <input class="ml-5 pl-5"type="file" name="file">
	          <!-- //file input area -->
	
	          <hr class="mt-4 mb-4">
	
	          <!-- submit button -->
	          <div class="form-row text-center">
	            <div class="col-12">
	                <button id="btn-submit" onclick="btnSubmitClick();" class="btn btn-sm btn-primary col-md-1 " type="button">Upload</button>
	            </div>
	          </div>
          </form>
          <!-- //submit button -->
  
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
		src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
			src="${pageContext.request.contextPath}/assets/bootstrap/js/common.js"></script>
</body>


</html>