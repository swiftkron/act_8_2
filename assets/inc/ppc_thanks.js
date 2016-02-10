//Check for Thank You
$(document).ready(function(){
	var $_GET = {};
	document.location.search.replace(/\??(?:([^=]+)=([^&]*)&?)/g, function () {
    function decode(s) {
        return decodeURIComponent(s.split("+").join(" "));
    }
		$_GET[decode(arguments[1])] = decode(arguments[2]);
		//document.write($_GET["test"]);
	});
	var thanks = $_GET["thanks"];
	if (thanks == "y"){
		$("#ppc_thanks").css({ "display": 'block'});
		$("#ppc_initial").css({ "display": 'none'});
		$(".ppc_moreInfo").css({ "display": 'none'});
		$(".ppc_moreInfoDivider").css({ "display": 'block'});		
		$(".ppc_form").css({ "display": 'none'});
	}
});
