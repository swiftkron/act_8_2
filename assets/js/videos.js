$(document).ready(function(){
	var location = [
	"https://www.youtube.com/embed/0fw-D-nTErk"
	];
	$('.overlay').click(function(){
		$('.overlay').css('display','none');
		$('.videoContainer').css('display','none');
	});
	$('.closeBtn').click(function(){
		$('.overlay').css('display','none');
		$('.videoContainer').css('display','none');
	});
	// Expo - Header Video
	$('#sbe-watch').click(function(){
		$('.overlay').css('display','block');
		$('.videoContainer').css('display','block');
		$('.videoContainer iframe').attr('src', location[0]);
	});
	$('#sbe-watch-blank').click(function(){
		window.open(location[0],'_blank');
	});
});
