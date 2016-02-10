
function stickyNav(){
	var bannerHeight = $('#header-banner').outerHeight();
	var scrollPos = $(window).scrollTop();
	if(scrollPos > bannerHeight){
		$('#header-nav').css('position','fixed');
		$('#header-nav').css('top',0);
	} else {
		$('#header-nav').css('position','relative');
	}

	var menuHeight = $('#menu').outerHeight();
	var windowHeight = $(window).height();
	if(menuHeight > windowHeight){
		$('#header-nav').css('max-height',windowHeight);
		$('#header-nav').css('overflow','scroll');
	}
}

function defineMenuRowLength() {
	if(!$('#menu.mobile #main-nav > li:nth-child(3)').hasClass('expand-row')){
		$('#menu.mobile #main-nav > li:nth-child(2n)').after('<li class="expand-row"></li>');

		if(!$('#menu.mobile #main-nav > li').last().hasClass('expand-row')){
			$('#menu.mobile #main-nav').append('<li class="expand-row"></li>');
		}

		$("#menu.mobile li.hasChildren > a").click(function(event) {
			event.preventDefault();
			var submenu = $(this).siblings('ul').html();
			//var thisMenuboxIndex = ($(this).parents('li.hasChildren').index('li.hasChildren') + 1);

			if($(this).hasClass('active')){
				//alert('this menu is already active, so close it');
				$('.active-row').slideToggle();
				$('.expand-row').removeClass('active-row');
				$(this).removeClass('active');
			} else {
				$('li.hasChildren a').removeClass('active');
				$(this).addClass('active');

				if ($(this).parent().nextAll('.expand-row:first').is(':visible')) {
					//alert('this expansion already expanded');
					$(this).parent().nextAll('.expand-row:first').html('<ul>' + submenu + '</ul>');
				} else {
					//alert('need to expand this section');
					$('.active-row').slideToggle();
					$('.expand-row').removeClass('active-row');
					$(this).parent().nextAll('.expand-row:first').html('<ul>' + submenu + '</ul>');
					$(this).parent().nextAll('.expand-row:first').slideToggle();
					$(this).parent().nextAll('.expand-row:first').addClass('active-row');
				}
			}
		});

	}
}
function desktopMenu(){
	if($('#menu').hasClass('desktop')){
		$('.expand-row').remove();
		$('#menu li a').removeClass('active');
		$('#menu.desktop li.hasChildren').hover(
			function(){
				$(this).find('ul').stop(true, true).fadeIn();
				//alert('desktop menu hovered');
			},function(){
				$(this).find('ul').stop(true, true).fadeOut('fast');
			}
		);
		$('#menu.desktop li.hasChildren ul').hover(
			function(){
				$(this).siblings('a').addClass('active');
				$(this).find('ul').stop(true, true).fadeIn();
			},function(){
				$(this).siblings('a').removeClass('active');
				$(this).find('ul').stop(true, true).fadeOut('fast');
			}
		);
	}
}
function responsiveMenu() {
	var current_width = $(window).width();
    //do something with the width value here!

    if(current_width < 856) {
      $('#menu').addClass("mobile").removeClass("desktop");
      defineMenuRowLength();
    }

    if(current_width > 855) {
      $('#menu').addClass("desktop").removeClass("mobile").removeClass('active');
      desktopMenu();
    }
}


$(document).ready(function() {

	// Mobile nav
	$('body').addClass('js');
		var $menu = $('#menu'),
		$menulink = $('.menu-link');

	$menulink.click(function() {
		$menulink.toggleClass('active');
		$menu.toggleClass('active');
		$('.active-row').slideToggle();
		$('.expand-row').removeClass('active-row');
		$('li.hasChildren a').removeClass('active');
		return false;
	});


	$(window).load(function(){
		stickyNav();
		responsiveMenu();
		defineMenuRowLength();
	});
	$(window).resize(function(){
		stickyNav();
		responsiveMenu();
	});
	$(window).scroll(function(){
		stickyNav();
	});

});