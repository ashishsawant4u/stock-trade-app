$( document ).ready(function() {
  
  	$(".trade-plan-element").on("keyup change", function(e) {
   		
   		let totalFund = $("#totalFundtext").val();
   		let nosOfTrade = $("#nosOfTradeTxt").val();
   		let maxLoss = $("#maxLossTxt").val();
   		
   		if(undefined!=totalFund && undefined!=nosOfTrade && undefined!=maxLoss)
   		{
   			let riskPerTrade = (parseFloat(maxLoss)/parseInt(nosOfTrade)).toFixed(2);
   			if(!isNaN(riskPerTrade))
   			{
   				$("#perTradeRiskGroup").removeClass("d-none");
   				$("#perTradeRiskLbl").text(riskPerTrade);
   			}
   			
   			$(".quantity-plan-element").trigger('change');
   		}
	});
	
	$(".quantity-plan-element").on("keyup change", function(e) {
		
			let stockPrice = $("#stockPriceTxt").val();
			let stopLoss = $("#stopLossTxt").val();
			let perTradeRisk = $("#perTradeRiskLbl").text();
			if(undefined != stockPrice && undefined != stopLoss && undefined != perTradeRisk)
			{
				let lossPerUnit = parseFloat(stockPrice) - parseFloat(stopLoss);
				if(!isNaN(lossPerUnit))
	   			{
	   				$("#lossPerUnitsGroup").removeClass("d-none");
	   				$("#lossPerUnitsLbl").text(lossPerUnit);
	   			}
	   			let quantity = parseFloat(perTradeRisk)/lossPerUnit;
	   			if(!isNaN(quantity))
	   			{
	   				$("#quantityUnitsLbl").removeClass("d-none");
	   				$("#quantityUnitsLbl").text(Math.round(quantity));
	   			}
	   			
	   			
	   			let buyPrice = parseFloat(stockPrice);
	   			let stopLossPrice = parseFloat(stopLoss);
	   			let targetPrice = buyPrice + (lossPerUnit * 2);
	   			let investmentAmount = buyPrice * Math.round(quantity);
	   			let possibleLoss = investmentAmount - (stopLossPrice * Math.round(quantity));
	   			let totalProfit =  targetPrice * Math.round(quantity);
	   			let possibleProfit = totalProfit - investmentAmount;
	   			let roi = ((possibleProfit/investmentAmount)*100).toFixed(2);
	   			let ruppeSymbol = "<span class='fw-bold'>&#8377;</span>";
	   			if(!isNaN(targetPrice))
	   			{
	   				$("#targetGroup").removeClass("d-none");
	   				$("#targetLbl").text(Math.round(targetPrice));
	   			}
	   			
	   			if(!isNaN(investmentAmount) && !isNaN(possibleLoss) && !isNaN(totalProfit) && !isNaN(possibleProfit) && !isNaN(roi))
	   			{
	   				$("#investedAmountCell").html(ruppeSymbol+investmentAmount);
	   				$("#possibleLossCell").html(ruppeSymbol+possibleLoss);
	   				$("#totalProfitCell").html(ruppeSymbol+totalProfit);
	   				$("#possibleProfitCell").html(ruppeSymbol+possibleProfit);
	   				$("#roiCell").text(roi+"%");
	   			}
	   			
	   			
			}
   	});	
	
	$(".only-numbers").on("keyup change", function(e) {
		
		this.value=this.value.replace(/[^\d]/,'');
		
     });	
  	
  
  
  
  
});