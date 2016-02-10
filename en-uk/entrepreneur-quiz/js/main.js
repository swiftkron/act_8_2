$(document).ready(function() {

	// $('.section--one .top .left').hover(function() {
	// 	$('.section--one .question--grid').css('background-image', 'url("img/section/section--one/hover/top-left.png")')
	// });

	var $questionGrid = $('.grid--question'),
		$gridCell = 	$('.question-grid__cell'),
		$mail =			$('.email');


	$gridCell.click(function() {

		if ($('.question-grid__cell.selected').length < 10) {

			var $this = $(this);

			$this.parent('.question-grid__row').parent().find('.question-grid__cell').removeClass('selected');

			$this.toggleClass('selected');

		}

	});


	$('.more').click(function() {
		$('.summary--one').hide();
		$('.summary--two').show();
	});

	$('.less').click(function() {
		$('.summary--one').show();
		$('.summary--two').hide();
	});



	$(window).on('resize load', function() {

		if( $(window).outerWidth() <= 640 ) {

			// Check the second one see if its been reordered
			if( !$questionGrid.eq(1).hasClass('reordered') ) {

				$questionGrid.each(function(index){

					// Get the odd ones e.g.
					// Zero based index
					// 0, 1, 2, 3, 4...
					if( index % 2 !== 0) {

						// caching this instance of $questionGrid
						var $this = $(this);

						console.log($this.find('.grid__item').eq(1));

						$this.addClass('reordered').find('.grid__item').eq(1).prependTo($this);
					}
				});

			}

		}else{

			// Check the second one see if its been reordered
			if( $questionGrid.eq(1).hasClass('reordered') ) {

				$questionGrid.each(function(index){

					if( index % 2 !== 0) {

						// caching this instance of $questionGrid
						var $this = $(this);

						$this.removeClass('reordered').find('.grid__item').eq(0).appendTo($this);
					}
				});
			}
		}
	});

});
