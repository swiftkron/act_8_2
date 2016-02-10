$(function() {

	$('#regionBtn').click(function(){
		$('.regionDropdown').show();
	});

	$('.regionDropdown').hover(
		function(){

		}, function(){
			$(this).fadeOut('fast');
		}
	);

});