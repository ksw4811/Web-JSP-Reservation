<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<meta charset="EUC-KR">
<title>�α���</title>
</head>
<body>
	<%@ include file = "menu.jsp" %>
	<div class="jumbotron">
           <div class="container">
           		<div class="text-center">
               		<h1 class="display-3">�α���</h1>
               </div>
           </div>
    </div>
    <div class = "container" align = "center">
    	<div class ="col-md-4 col-md-offset-4">
    		<h3 class = "form-signin-heading">Please sign in</h3>
    		<%
    			String error = request.getParameter("error");
    			if(error != null)
    			{
    				out.println("<div class='alert alert-danger'>");
    				out.println("���̵�� ��й�ȣ�� Ȯ�����ּ���");
    				out.println("</div>");
    			}
    		%>
    		<form class = "form-signin" action = "j_security_check" method = "post">
    			<div class = "form-group">
    				<label for = "inputUserName" class = "sr-only">User Name</label>
    				<input type = "text" class = "form-control" placeholder="ID" name = "j_username" required autofocus>
     			</div>
     			<div class = "form-group">
    				<label for = "inputPassword" class = "sr-only">Password</label>
    				<input type = "password" class = "form-control" placeholder="Password" name = "j_password" required autofocus>
     			</div>
     			<button class = "btn btn-lg btn-success btn-block" type = "submit">�α���</button>
    		</form>
    	</div>
    </div>
</body>
</html>