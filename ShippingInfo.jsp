<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<meta charset="EUC-KR">
<title>예약 정보</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
		<div class="jumbotron">
           <div class="container">
               <h1 class="display-3"> 예약 정보 </h1>
           </div>
        </div>
        <div class = "container">
        	<form action = "./processShippingInfo.jsp" class ="form-horizontal" method = "post">
        		<input type = "hidden" name = "cartId" value = <%=request.getParameter("cartId") %> />
        		<div class = "form-group row">
        			<label class = "col-sm-2">성명</label>
        			<div class = "col-sm-3">
        				<input name = "name" type = "text" class = "form-control"/>
        		   </div>
        	    </div>
        	    <div class = "form-group row">
        			<label class = "col-sm-2">예약일</label>
        			<div class = "col-sm-3">
        				<input name = "shippingDate" type = "text" class = "form-control"/>(yyyy/mm/dd)
        		   </div>
        	    </div>
        	    <div class = "form-group row">
        			<label class = "col-sm-2">국가명</label>
        			<div class = "col-sm-3">
        				<input name = "country" type = "text" class = "form-control"/>
        		   </div>
        	    </div>
        	    <div class = "form-group row">
        			<label class = "col-sm-2">우편번호</label>
        			<div class = "col-sm-3">
        				<input name = "zipCode" type = "text" class = "form-control"/>
        		   </div>
        	    </div>
        	    <div class = "form-group row">
        	    	<div class = "col-sm-offset-2 col-sm-10">
        	    		<a href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>" class = "btn btn-secondary" role = "button">이전</a>
        	    		<input type= "submit" class = "btn btn-primary" value = "등록"/>
        	    		<a href="./checkOutCancelled.jsp" class = "btn btn-secondary" role = "button">취소</a>
        	    	</div>
        	    </div>
            </form>
     	</div>
</body>
</html>