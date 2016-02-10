slider = $('.slider').unslider({
	speed: 500,               //  The speed to animate each slide (in milliseconds)
	delay: 5000,              //  The delay between slide animations (in milliseconds)
	complete: function() {},  //  A function that gets called after every slide animation
	keys: true,               //  Enable keyboard (left, right) arrow shortcuts
	dots: true,               //  Display dot navigation
	fluid: true              //  Support responsive design. May break non-responsive designs
});


//product select button on homepage

$( ".product_select a" ).on( "click", function() {
	$('.home_p_btn.active').removeClass('active');
	$(this).addClass('active');
	var link = $(this).attr('data-link');


    $(".product.active" ).fadeOut( "slow", function(){
    	$(".product.active").removeClass('active');
       $( ".product."+link ).fadeIn( "slow" ).addClass('active');
      });
    });
// accordion
$('.accordion .panel .title').on('click', function() {

  	if($(this).parent().hasClass('active')) {
    		$(this).parent().removeClass('active').find('.panel-content').slideUp('slow');
  	} else {
    		$(this).parent().addClass('active').find('.panel-content').slideDown('slow');
  	}
  	$(this).parent().siblings().each(function() {
    		if($(this).hasClass('active')) {
			$(this).removeClass('active').find('.panel-content').slideUp('slow');
    		}
  	});
});
// accordion business care & resources (getting started)
$('.alt-accordion .title').on('click',  function() {
	
	var $trigger = $(this); 
  	var $triggerIcon = $trigger.find('.expand-icon');
  	var $content = $trigger.next('.panel-content'); 
  	
  	if($trigger.hasClass('active')){
	  	$trigger.removeClass('active triangle-border');//removes the down arrow and active class on close
	  	$triggerIcon.removeClass('rotate');
	  	$content.slideUp('slow');
  	}else{
	  	$trigger.addClass('active triangle-border');//adds the down arrow and active class on open
	  	$triggerIcon.addClass('rotate');
	  	$content.slideDown('slow');
  	}

  				/*	if($(this).parent().parent().hasClass('active')) {
  				    		$(this).find('img').removeClass('rotate');
  						$(this).parent().parent().removeClass('active').find('.panel-content').slideUp('slow');
  				  	} else {
  				    		$(this).find('img').addClass('rotate');
  						$(this).parent().parent().addClass('active').find('.panel-content').slideDown('slow');
  				  	}
  				  	$(this).parent().parent().siblings().each(function() {
  				    		if($(this).hasClass('active')) {
  							$(this).find('img').removeClass('rotate');
  					  		$(this).removeClass('active').find('.panel-content').slideUp('slow');
  				    		}
  				  	});*/
  	
});


// Mobile business care selctor
$('.care-selector a').on('click', function() {
	// --- just changed to tables so altered below code slighty to this...
	var selected = '.'+$(this).attr('data-selector');
   	$('#care-table td:not(.expand-col)').addClass('hide');
 	$('#care-table td'+selected).removeClass('hide');
  	$('#care-table td'+selected).filter(function() {
      	if($(this).text() === "-") {
        	$(this).parent('tr').addClass('hide');
        	console.log($(this).parent().parent());
      	}else{
        	$(this).parent('tr').removeClass('hide');
      	}
  	});

  			/*  var selected = $(this).attr('data-selector');
  			  $('#care-table div.'+selected).siblings().not('.title, .alt-accordion').addClass('hide');
  			  $('#care-table div.'+selected).filter(function() {
  			      if ($(this).text() === "-") {
  			        $(this).addClass('hide');
  			        $(this).siblings('.alt-accordion').addClass('hide');
  			        // if all rows empty hide title row
  			      } else {
  			        $(this).removeClass('hide');
  			        $(this).siblings('.alt-accordion').removeClass('hide');
  			      }
  			  });
  			  
  			  */
  
});

// Expanding Testmonials

/*
	REPLACED THIS WITH COMPLETE WORKING CODE (below) - LEFT IN FOR REFERENCE/ROLLBACK
	
if($('.home_testimonial_hold').length) {
  var imageColumns = 3; 
  var imageWidth = $('.home_testimonial_hold').width() / imageColumns;
} else if($('.testimonial_hold').length) {
  var imageColumns = 4; 
  var imageWidth = $('.testimonial_hold').width() / imageColumns;  
} 
//HACK
imageWidth = imageWidth -0.1;

function testimonial() {
  var row = -1;

  $(".home_testimonial:visible").each(function(index) {
      if(index % 4 == 0) {
        row++;
      }
      var left = (index % imageColumns * imageWidth);
      var top = $(this).outerHeight() * row;
      var containerHeight = $(this).outerHeight() * (row + 1);
      $(this).css({left: left + 'px', top: top + 'px'});
      $(".testimonial_hold").height(containerHeight);
  });
}

testimonial();

$(".home_testimonial").hover(function() {
    $(this).css("z-index", 1).animate({ height: "645", width: '+=6%', left: "-=3%", top: "-=30" }, "fast");
}, function() {
    $(this).css("z-index", 0).animate({ height: "594", width: imageWidth, left: "+=3%", top: "+=30" }, "fast");
});

// Filter menu for testimonials
$('.filter-category input').on('click', function() {
  	var filter = $(this).attr('data-filter');
  	if($('.filter-category input:checked').not(this).length) {
    	var otherFilters = $('.filter-category input:checked').not(this).attr('data-filter');
		$('.home_testimonial[data-filter*="'+filter+'"][data-filter*="'+otherFilters+'"]').show().siblings('.home_testimonial:not([data-filter*="'+filter+'"])').hide();
		console.log($('.home_testimonial[data-filter*="'+filter+'"][data-filter*="'+otherFilters+'"]'));
  	} else {
      $('.home_testimonial[data-filter*="'+filter+'"]').show().siblings('.home_testimonial:not([data-filter*="'+filter+'"])').hide();
  	}
  	testimonial();
});
// Reset filter
$('.reset-filter').on('click', function() {
  $('.home_testimonial').show();
  $('.filter-category input').prop('checked', false);
  testimonial();
});
// Nav dropdown  
$('.filter-category span').on('click', function(){
  if($(this).parent().find('ol').hasClass('active-category')){
    $(this).parent().find('ol').removeClass('active-category').slideUp();
  }else{
    $('.filter-category ol').removeClass('active-category').slideUp();
    $(this).parent().find('ol').addClass('active-category').slideDown();
  }
});
// Click anywhere to close nav dropdown
$(document).click(function() {
  $('.filter-category ol').removeClass('active-category').slideUp();
}); 
$('.filter-category').on('click', function(event){
  event.stopPropagation();
});

  /*$filterInput.on('click', function() {
	if($('.filter-category input:checked').not(this).length) {
    	var otherFilters = $('.filter-category input:checked').not(this).attr('data-filter');
		$('.home_testimonial[data-filter*="'+filter+'"][data-filter*="'+otherFilters+'"]').show().siblings('.home_testimonial:not([data-filter*="'+filter+'"])').hide();
		console.log($('.home_testimonial[data-filter*="'+filter+'"][data-filter*="'+otherFilters+'"]'));
  	} else {
      $('.home_testimonial[data-filter*="'+filter+'"]').show().siblings('.home_testimonial:not([data-filter*="'+filter+'"])').hide();
  	}
  	});

*/

var $testWrap = $('.test-wrap')
var $filterInput = $('.filter-category input')

$filterInput.on('click', function() {
	var catArray = [];
	var testArray = [];
	var solArray = [];
	  	
  	$filterInput.each( function(){
  		var filterType = $(this).closest('ol').attr('data-filter-type');
  		var filter = $(this).attr('data-filter');
	  	if($(this).is(':checked')){
		  	
		  	switch(filterType){
			  	case 'test-cat':	
			  		catArray.push(filter);
			  	break;
			  	case 'test-size':	
			  		testArray.push(filter);
			  	break;
			  	case 'test-solution':	
			  		solArray.push(filter);
			  	break;
			  }
			}
  	});
  	
  	$testWrap.each(function(){
			if( 
				($.inArray( $(this).attr('data-test-cat'), catArray ) > -1 || catArray.length <1)  && 
				($.inArray( $(this).attr('data-test-size'), testArray)> -1 || testArray.length <1)  && 
				($.inArray( $(this).attr('data-test-solution'), solArray)> -1 || solArray.length <1) 
			 ){
				$(this).show();
			}else{
				$(this).hide();
			}
	});  	

});


// Reset filter
$('.reset-filter').on('click', function() {
	$testWrap.show();
	$filterInput.prop('checked', false);
});


//Menu fix for touch devices

function is_touch_device() {

  return !!('ontouchstart' in window);

}

$(document).ready(function() { 
	
	/* If mobile browser, prevent click on parent nav item from redirecting to URL */
	if(is_touch_device()) {	

		$('.nav-collapse li > ul').each(function (index, elem) {
			/* Option 1: Use this to modify the href on the <a> to # */
			$(elem).prev('a').attr('href' ,'#');	
			
			/* OR Option 2: Use this to keep the href on the <a> intact but prevent the default action */
			$(elem).prev('a').click(function(event) {
  				event.preventDefault();
			});
		});
	}
	
});





//Mobile menu

var nav = responsiveNav(".nav-collapse", { // Selector
  	animate: false, // Boolean: Use CSS3 transitions, true or false
  	transition: 284, // Integer: Speed of the transition, in milliseconds
  	label: "Menu", // String: Label for the navigation toggle
  	insert: "before", // String: Insert the toggle before or after the navigation
  	customToggle: "mobile_btn", // Selector: Specify the ID of a custom toggle
  	closeOnNavClick: false, // Boolean: Close the navigation when one of the links are clicked
  	openPos: "relative", // String: Position of the opened nav, relative or static
  	navClass: "nav-collapse", // String: Default CSS class. If changed, you need to edit the CSS too!
  	navActiveClass: "js-nav-active", // String: Class that is added to  element when nav is active
  	jsClass: "js", // String: 'JS enabled' class which is added to  element
  	init: function(){}, // Function: Init callback
  	open: function(){
	  	$(".menu_icon").hide();
 	  	$(".menu_icon_close").show();
 	}, // Function: Open callback
  	close: function(){
	  	$(".menu_icon_close").hide();
	  	$(".menu_icon").show();

  	} // Function: Close callback
});
$('.nav-collapse li').on('click', function(){
	$(this).find('a:first').addClass('active'); 
	$(this).find('ul').css('display', 'block');
	$(this).siblings().find('a').removeClass('active'); 
	$(this).siblings().find('ul').css('display', 'none');
});

//Lovely js to fix that varying height header maybe replace with css?
function setSpacer(){
    var height = jQuery(".fixed-wrapper").outerHeight();
	$(".spacer").css('padding-bottom' , height+'px');
	$(".anchor").css('bottom' , height+'px');
}





$( document ).ready(function() {


	$(".second-nav a, .linkfix li a").click(function(event){		
		event.preventDefault();

		var anchoroffset = $('.fixed-wrapper').height();
	
		var anchoroffset = anchoroffset + $('.second-nav').height();
			console.log(anchoroffset);
		$('html,body').animate({scrollTop:$(this.hash).offset().top - anchoroffset}, 500);
	});


 $('.cta').css('visibility','visible');
  
    setTimeout( setSpacer, 1000);
    stickElement();

    $('.fadingnav').on('mouseover', function(){$(this).removeClass('fadingnav');});
    
		//nav dropdown	
			$('.filter-category span').on('click', function(){
				if($(this).parent().find('ol').hasClass('active-category')){
						$(this).parent().find('ol').removeClass('active-category').slideUp();
					}else{
						$('.filter-category ol').removeClass('active-category').slideUp();
						$(this).parent().find('ol').addClass('active-category').slideDown();
					}
			});
		//click anywhere to close nav dropdown
			$(document).click(function() {
						$('.filter-category ol').removeClass('active-category').slideUp();
			});	
			$('.filter-category').on('click', function(event){
					event.stopPropagation();
			});
 
    
    
});
   $(".chosen-select").chosen();
// ======    Testimonial popouts
    $('.test-popout').on('mouseover', function(){
	    $(this).css('z-index','2');
	    $(this).addClass('popped');
    });
    $('.test-popout').on('mouseout', function(){
	    $(this).css('z-index','1');
	    $(this).removeClass('popped');
    });
// ======    End Testimonial popouts

// ======  Need to trigger this on screen resize too...
window.onresize = function(event) {
	setSpacer();
	//fix responsive nav hover bug
	$('nav ul li a, #mobile_btn').removeClass('active');
	$('html').removeClass('js-nav-active');
	$('html').removeClass('applicationcache');
	$('.opened').removeClass('opened').addClass('closed');
	$('nav ul li ul').removeAttr('style');
};

$('.second-nav a').on('click', function(){
});
//Stick the secondary menu to the top of the page when the other menu hits it, magical stuff.

function stickElement() {
    var move = function() {
        var offset = jQuery(".fixed-wrapper").height();

        //distance scrolled
        var topdist = $(window).scrollTop();
        //offsetting sticky top nav
        topdist = topdist + offset;
        //distance sticky from top
        if($("#scroller-anchor").length) {
	        var stickdistance = $("#scroller-anchor").offset().top;
	        var s = $(".second-nav");
	        if(topdist > stickdistance) {

		        //$('.fadeoutnav').each(function(){$(this).addClass('fadingnav');});
	            s.css({
	                position: "fixed",
	                top: offset+"px"
	            });
	        } else {
	            if(topdist <= stickdistance) {
		        
		         //$('.fadeoutnav').each(function(){$(this).removeClass('fadingnav');});
	                s.css({
	                    position: "absolute",
	                    top: ""
	                });
	           }
	        }
	    }
    };
	$(window).scroll(move);
    move();
}



/* =====  contact forms   ==== */


function countryOptin(thisForm)
	{
		var x = document.getElementById('MailingCountry').value;
		if (
		(x == "Canada") ||
		(x == "Germany") ||
		(x == "Australia")
		){
			document.getElementById('reqOptIn').style.display="block";
		}
		else{
			document.getElementById('reqOptIn').style.display="none";
		}
	}		

function setValues()
	{
        var state = document.getElementById('check1').checked				  
		if (state == true)
		{	
			document.getElementById('DoNotSolicit').value = "0";
			 document.getElementById('opIn').value = "Y"; 
		   	 document.getElementById('TriggerID').value = "1640";
		 
		}
        else if (state == false)
		{	
			document.getElementById('DoNotSolicit').value = "1";
			  document.getElementById('opIn').value = "N"; 
			  document.getElementById('TriggerID').value = "0";
	}
}
                
                
	        successOverlay = $('.successOverlay');
	        successModal = $('.successModal');
	        videoModal = $('.videoModal');
			allElements = $('*');
	        $(document).on('click', '.CloseButton', function(){
		    	successOverlay.hide();	
		    	successModal.hide();	
	        }); 
	        	if(window.location.search == '?thankyou'){
	        		successOverlay.show();
		        	successModal.show().find('.box2').html(thankYouMessage);
				}
				/* 
			$(document).on('click', '#ContactSubmit', function() {
				//remove errors
		        	allElements.addClass('cursor-wait');	
		        	
					$('.highlighted_error').hide();
					$('.highlighted_field').removeClass('highlighted_field');
					
				//set vars
					var  title = String($('#contactTitle').val());
					var  fname = String($('#ContactFirstName').val());
					var  lname = String($('#ContactLastName').val());
					var  company = String($('#ContactCompany').val());
					var  phone = String($('#ContactPhone').val());
					var  country = String($('#ContactCountry').val());
					var  email = String($('#ContactEmail').val());
					var  message = String($('#ContactMessage').val());
					var  FormType = String($('#FormType').val());
					var ob = {
						"contactTitle": title,
						"ContactFirstName":  fname,
						"ContactLastName": lname,
						"ContactCompany": company,
						"ContactPhone": phone,
						"ContactCountry": country,
						"ContactEmail": email,
						"ContactMessage": message,
						"FormType": FormType
						};
				//ajax post	
				var json = JSON.stringify(ob);
				$.ajax({
				        type: "POST",
				        url: "contact-us/AjaxForm",
				        data: json,
				        contentType: "application/json; charset=utf-8",
				        dataType: "json",
				        success: function(data){
					         callbackfn(data)
					         },
				        error: function(data){
					         callbackfn(data)
					         }
				    });	
				    return false;	
			});
			function callbackfn(data)
			{
				if(data.d == "failed")
				{
					successOverlay.show();
		        	successModal.show().find('.box2').html(errorMessage).show();
					allElements.removeClass('cursor-wait');	
				}
				else
				if(data.d == "success")
				{
					successOverlay.show();
		        	successModal.show().find('.box2').html(thankYouMessage);
					allElements.removeClass('cursor-wait');	
			   	}
			   else
			   {
					//highlight empty field
					$(data.d).addClass("highlighted_field");
					$(data.d).next('.highlighted_error').css('display','block');
					//$(data.d).after(requiredMessage);
					allElements.removeClass('cursor-wait');	
			   }

			}		*/		 


//SOCIAL OVERLAY//


var url      = window.location.href;     // Returns full URL
var sharetitle = $('.large_strapline').html();
var sharetitle = encodeURIComponent(sharetitle);
var shareimage = '';


if (shareimage.length >= 1) {

var shareimage = $('.section-bg').css('background-image');
shareimage = shareimage.replace('url(','').replace(')','');
}

console.log(shareimage);



var overlaycontent = '<div class="social pop-share"><a href="https://www.linkedin.com/shareArticle?mini=true&url=' + url + '&title=' + sharetitle + ' &source=LinkedIn" class="social-roll linkd" target="_blank">LinkedIn</a><a href="http://twitter.com/intent/tweet?url=' + url + '/&text=' + sharetitle + '" class="social-roll twit" target="_blank">Twitter</a><a target="_blank" href="http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]=' + url +'&amp;p[images][0]=' + shareimage + '&amp;p[title]=Act! Software;p[summary]=Act software" class="social-roll fb" >Facebook</a><br></div>';

console.log(overlaycontent);
console.log(sharetitle);
jQuery('.share_btn').on("click", function() {

	var docHeight = $(document).height();
	$("#overlay").height(docHeight);

	if ($('.pop-share').length) {
			$('.pop-share').remove();
			$('#overlay').css('display', 'none');
	}

	else {

		$(this).before(overlaycontent);
		$('#overlay').css('display', 'block');

	}

	$(this).toggleClass('share_selected');

	
})


//Adding the overlay

$(function() {

   $("body").append("<div id='overlay'></div>");

   var docHeight = $(document).height();

   $("#overlay")
      .height(docHeight)
      .css({
         'opacity' : 0.8,
         'position': 'absolute',
         'top': 0,
         'display': 'none',
         'left': 0,
         'background-color': 'black',
         'width': '100%',
         'z-index': 5000
      });
});


$('.extra .container:nth-child(3)').after("<hr class='notopmargin'>");
          