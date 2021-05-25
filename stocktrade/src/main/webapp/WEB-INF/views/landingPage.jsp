<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<h1>STOCK TRADE</h1>

<div class="container">
   <h3>Trade Plan</h3>	
   <form id="tradePlannerForm">
	  <div class="row bg-info p-2">
	    <div class="col">
	      <label>Total Fund</label>
	      <div class="input-group mb-3">	
	      	<span class="input-group-text">&#8377;</span>
	      	<input type="text" class="form-control trade-plan-element only-numbers" placeholder="Total Fund" id="totalFundtext">
	      </div>	
	    </div>
	    <div class="col">
	      <label>Max Loss</label>
	      <div class="input-group mb-3">	
	      	<span class="input-group-text">&#8377;</span>	
	      	<input type="text" class="form-control trade-plan-element only-numbers" placeholder="Max Loss you can afford" id="maxLossTxt">
	      </div>
	    </div>
	    <div class="col">
	      <label>Nos. of Trade</label>	
	      <input type="text" class="form-control trade-plan-element" placeholder="Back to back Nos. of Trade Can go wrong" id="nosOfTradeTxt">
	    </div>
	    <div class="col bg-warning p-2">
	      <label class="fw-bold">Risk Per Trade</label>	
	      <div class="input-group mb-3 d-none" id="perTradeRiskGroup">	
	      	<span class="input-group-text">&#8377;</span>
	      	<span id="perTradeRiskLbl" class="fw-bold form-control"></span>
	      </div>
	    </div>
	  </div>
  </form>
  
  <br>
  
  <h3>Trade Calculator</h3>
  <form id="quantityPlannerForm">
  		<div class="row bg-info p-2">
  			<div class="input-group mb-3 w-50">
			  <span class="input-group-text">Company/Stock Name</span>
			  <input type="text" class="form-control fw-bold" id="companyNameTxt">
			</div>
  		</div>
  		<div class="row bg-info p-2">
  			 <div class="col">
		      <label>Stock Price/Limit Price</label>
		      <div class="input-group mb-3">	
	      			<span class="input-group-text">&#8377;</span>	
		      		<input type="text" class="form-control quantity-plan-element only-numbers" placeholder="Stock Buying Price" id="stockPriceTxt">
		      </div>
		    </div>
		    <div class="col">
		      <label>Stop Loss</label>
		      <div class="input-group mb-3">	
	      		<span class="input-group-text">&#8377;</span>	
		      	<input type="text" class="form-control quantity-plan-element only-numbers" placeholder="Stop Loss Amount" id="stopLossTxt">
		      </div>
		    </div>
		    <div class="col bg-warning p-2">
		      <label class="fw-bold">Loss Per Unit</label>
		      <div class="input-group mb-3 d-none" id="lossPerUnitsGroup">	
	      		<span class="input-group-text">&#8377;</span>	
		        <span id="lossPerUnitsLbl" class="fw-bold form-control"></span>
		      </div>
		    </div>
		    <div class="col bg-warning p-2">
		      <label class="fw-bold">Target/Exit Price</label>
		      <div class="input-group mb-3 d-none" id="targetGroup">	
	      		<span class="input-group-text">&#8377;</span>		
		        <span id="targetLbl" class="fw-bold form-control"></span>
		      </div>
		    </div>
		    <div class="col bg-warning p-2">
		      <label class="fw-bold">Quantity can be purchased</label>	
		      <span id="quantityUnitsLbl" class="fw-bold form-control d-none"></span>
		    </div>
  		</div>
  </form>
  
  <table class="table table-hover w-50 float-end" id="buyDetailsTable">
  	<thead>
      <tr>
        <th>Profit & Loss</th>
        <th>Amount</th>
      </tr>
    </thead>
  	<tbody>
  		<tr>
  			<td class="fw-bold">Invested Amount</td>
  			<td id="investedAmountCell"></td>
  		</tr>
  		<tr>
  			<td class="fw-bold">Possible Loss</td>
  			<td id="possibleLossCell"></td>
  		</tr>
  		<tr>
  			<td class="fw-bold">Profit Amount</td>
  			<td id="totalProfitCell"></td>
  		</tr>
  		<tr>
  			<td class="fw-bold">Possible Profit</td>
  			<td id="possibleProfitCell"></td>
  		</tr>
  		<tr>
  			<td class="fw-bold">ROI %</td>
  			<td id="roiCell"></td>
  		</tr>
  	</tbody>
  </table>	  

  
</div>

</body>
</html>