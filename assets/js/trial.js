function setOnRurl(thisForm)
  {
    var y = document.getElementById('online-trial').value;
		if (y == "3353"){
			document.getElementById('rurl').value = "http://webdevd.testsp.com/lp/trial/thankyou?trial=on";
		}
  }
function setDlRurl(thisForm)
  {
    var z = document.getElementById('dl-trial').value;
		if (z == "3351"){
			document.getElementById('rurl').value = "http://webdevd.testsp.com/lp/trial/thankyou?trial=dl";
		}
  }
// Differentiate between trial states
function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
$(document).ready(function(){
	// Turn off redundant content
	var trial = getParameterByName('trial');
	if ((!trial) || (trial == "")){
		$("#trialAltContent").hide();
	}
	// Toggle Disclaimer
	$("#online-trial").click(function(){
		$("#formBanner").hide();	
	});
	$("#dl-trial").click(function(){
		$("#formBanner").show();
	});
});
