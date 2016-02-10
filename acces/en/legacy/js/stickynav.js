		$(document).ready(function(){
			$("#btn-register").click(function(){
				$("#register").css('padding-top','130px');
			}); 

			$("#nav-about").click(function(){
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#about").css('padding-top','130px');
			}); 
			$("#nav-register").click(function(){
				$("#about").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#register").css('padding-top','130px');
			}); 
			$("#nav-agenda").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#agenda").css('padding-top','130px');
			}); 
			$("#nav-sponsors").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#sponsors").css('padding-top','130px');
			}); 
			$("#nav-speakers").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#speakers").css('padding-top','130px');
			}); 
			$("#nav-travel").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#travel").css('padding-top','130px');
			}); 
			$("#nav-media").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','130px');
			});
			
			$("#nav-about2").click(function(){
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#about").css('padding-top','130px');
			}); 
			$("#nav-register2").click(function(){
				$("#about").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#register").css('padding-top','130px');
			}); 
			$("#nav-agenda2").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#agenda").css('padding-top','130px');
			}); 
			$("#nav-sponsors2").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#sponsors").css('padding-top','130px');
			}); 
			$("#nav-speakers2").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#speakers").css('padding-top','130px');
			}); 
			$("#nav-travel2").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#media").css('padding-top','0');
				$("#travel").css('padding-top','130px');
			}); 
			$("#nav-media2").click(function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','130px');
			}); 

			$(document).scroll(function() {
				var top = $(document).scrollTop();
				console.log(top);
				if (top > 0) $('#menu').show();
				if (top < 0) $('#menu').hide();
				if (top > 650) $('#fixed').show();
				if (top < 650) $('#fixed').hide();
			});

		})
		
		var mousewheelevt=(/Firefox/i.test(navigator.userAgent))? "DOMMouseScroll" : "mousewheel";

		if (document.attachEvent) //if IE (and Opera depending on user setting)
			document.attachEvent("on"+mousewheelevt, function(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
		})
		
		else if (document.addEventListener) //WC3 browsers
			document.addEventListener(
			mousewheelevt, 
			function a(){
				$("#about").css('padding-top','0');
				$("#register").css('padding-top','0');
				$("#agenda").css('padding-top','0');
				$("#sponsors").css('padding-top','0');
				$("#speakers").css('padding-top','0');
				$("#travel").css('padding-top','0');
				$("#media").css('padding-top','0');
			}
		, false)
