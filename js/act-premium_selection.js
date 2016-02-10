// Define Attribution Variables
var srid = getParameterByName('srid');
var ror = getParameterByName('ror');
// Act! Premium Selection
$(document).ready(function(){
	// Preload Monthly Sub Data
	$('#buyDesktop').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Month?srid='+ srid +'&ror='+ ror +'');
	$('#buyHosted').attr('href','https://buy.act.com/en-us/purchase/product/ActPremiumCloud/plan/Annual?srid='+ srid +'&ror='+ ror +'');
	$('.priceStrike span').html('$25/user/month');
	$('#payCloud').html('$420');
	$('#payPrem').html('$25');
	// Desktop
	$('#premDesktopTerm').change(function(){
		var pterm = $('#premDesktopTerm').val();
		//document.write(term);
		if (pterm == "pLicense"){
			$('#premDesktopPrice').html('<span class="reduceFont">500</span><span class="usd"> /user</span>');
			$('#premDesktopPriceU').html('<span class="reduceFont">380</span><span class="usd"> /user</span>');
			$('#buyDesktop').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Annual?per=true&srid='+ srid +'&ror='+ ror +'');
			$('.priceStrike span').html('$500/user/license');
			$('#payPrem').html('$500');
		}
		else if (pterm == "pAnnual"){
			$('#premDesktopPrice').html('<span class="reduceFont">250</span><span class="usd"> /user</span>');
			$('#premDesktopPriceU').html('<span class="reduceFont">190</span><span class="usd"> /user</span>');
			$('#buyDesktop').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Annual?srid='+ srid +'&ror='+ ror +'');
			$('.priceStrike span').html('$250/user/year');
			$('#payPrem').html('$250');
		}
		else {
			$('#premDesktopPrice').html('25<span class="usd"> /user/month</span>');
			$('#premDesktopPriceU').html('19<span class="usd"> /user/month</span>');
			$('#buyDesktop').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremium/plan/Month?srid='+ srid +'&ror='+ ror +'');
			$('.priceStrike span').html('$25/user/month');
			$('#payPrem').html('$25');
		}
	});
	// Hosted
	$('#premHostedTerm').change(function(){
		var hterm = $('#premHostedTerm').val();
		//document.write(term);
		if (hterm == "hLicense"){
			$('#premHostedPrice').html('4500<span class="usd"> /user/month</span>');
			$('#buyHosted').attr('href','javascript:alert("NEED LINK")');
		}
		else if (hterm == "hAnnual"){
			$('#premHostedPrice').html('35<span class="usd"> /user/month</span>');
			$('#buyHosted').attr('href','https://buy.act.com/en-us/purchase/product/ActPremiumCloud/plan/Annual?srid='+ srid +'&ror='+ ror +'');
			$('#payCloud').html('$420');
		}
		else {
			$('#premHostedPrice').html('42<span class="usd"> /user/month</span>');
			$('#buyHosted').attr('href', 'https://buy.act.com/en-us/purchase/product/ActPremiumCloud/plan/Month?srid='+ srid +'&ror='+ ror +'');
			$('#payCloud').html('$42');
		}
	});
    // KM Tracking on Click
	$('#buyDesktop').click(function () {
	    var term = $('#premDesktopTerm').val();
	   _kmq.push(["record", "buyClick", [term]]);
	});
	$('#buyHosted').click(function () {
	    var term = $('#premHostedTerm').val();
	    _kmq.push(["record", "buyClick", [term]]);
	});
});
