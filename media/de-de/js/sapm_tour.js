$(document).ready(function() {
	
	$("#leverage").show().siblings('.ipad-img').hide();
	$("#leverage-desc").show().siblings('.desc').hide();

	$(".toggler").click(function () 
	{
	    var $this = $(this);
	    
	    $('.selected').removeClass('selected')
	    $this.addClass("selected");
	    
	    if ($this.hasClass("leverage")) {
	        $("#leverage").show().siblings('.ipad-img').hide();
	        $("#leverage-desc").fadeIn().show().siblings('.desc').hide();
	    }
	    if ($this.hasClass("simplify")) {
	        $("#simplify").show().siblings('.ipad-img').hide();
	        $("#simplify-desc").fadeIn().show().siblings('.desc').hide();
	    }
	    if ($this.hasClass("increase")) {
	        $("#increase").show().siblings('.ipad-img').hide();
	        $("#increase-desc").fadeIn().show().siblings('.desc').hide();
	    }
	    if ($this.hasClass("empower")) {
	        $("#empower").show().siblings('.ipad-img').hide();
	        $("#empower-desc").fadeIn().show().siblings('.desc').hide();
	    }
	    

	});
	
	
});
