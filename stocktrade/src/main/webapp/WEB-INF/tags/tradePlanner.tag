<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<div id="tradePlannerSection" class="card">
<div class="card-header fw-bold">
    Trade Planner
</div>
<div class="card-body">
   <form id="tradePlannerForm">
	  <div class="row bg-info p-2">
	    <div class="col">
	      <label>Total Fund</label><span class="text-danger">*</span>
	      <div class="input-group mb-3">	
	      	<span class="input-group-text">&#8377;</span>
	      	<input type="text" class="form-control trade-plan-element only-numbers" placeholder="Total Fund" id="totalFundtext">
	      </div>	
	    </div>
	    <div class="col">
	      <label>Max Loss</label><span class="text-danger">*</span>
	      <div class="input-group mb-3">	
	      	<span class="input-group-text">&#8377;</span>	
	      	<input type="text" class="form-control trade-plan-element only-numbers" placeholder="Max Loss you can afford" id="maxLossTxt">
	      </div>
	    </div>
	    <div class="col">
	      <label>Nos. of Trade</label><span class="text-danger">*</span>
	      <input type="text" class="form-control trade-plan-element" placeholder="Back to back Nos. of Trade Can go wrong" id="nosOfTradeTxt">
	    </div>
	    <div class="col bg-light p-2">
	      <label class="fw-bold">Risk Per Trade</label>	
	      <div class="input-group mb-3 d-none" id="perTradeRiskGroup">	
	      	<span class="input-group-text">&#8377;</span>
	      	<span id="perTradeRiskLbl" class="fw-bold form-control"></span>
	      </div>
	    </div>
	  </div>
  </form>

  </div>
</div>  