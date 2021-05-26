<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Trade</title>

<link href="/webjars/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/custom.css"  rel="stylesheet">

<script src="/webjars/bootstrap/5.0.0/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/3.6.0/jquery.min.js"></script>
<script src="/js/custom.js"></script>

</head>
<body>

<tags:siteHeader/> 

<div class="container">
  
  <tags:tradePlanner />
  <br>
  <tags:tradeCalculator/>
  <tags:tradeProfitLosss/>
  
  	  

  
</div>

</body>
</html>