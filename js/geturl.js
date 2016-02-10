	// Get URL Parameters
	function getParameterByName(name) {
		name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		results = regex.exec(location.search);
		return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
		
// Define UTM Variables
var utm_source = getParameterByName('utm_source');
var utm_medium = getParameterByName('utm_medium');
var utm_content = getParameterByName('utm_content');
var utm_campaign = getParameterByName('utm_campaign');
var utm_name = getParameterByName('utm_name');
var utm_term = getParameterByName('utm_term');
// Preload UTM Data for Elq Forms
$(document).ready(function(){
	$('input[name="utm_source"]').attr('value', utm_source);
	$('input[name="utm_medium"]').attr('value', utm_medium);
	$('input[name="utm_content"]').attr('value', utm_content);
	$('input[name="utm_campaign"]').attr('value', utm_campaign);
	$('input[name="utm_name"]').attr('value', utm_name);
	$('input[name="utm_term"]').attr('value', utm_term);
});
