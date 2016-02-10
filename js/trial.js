		//Parse URL Parameters and Record
		var src = getParameterByName('src');
		$(document).ready(function(){
			if (src == "cloud"){
				$('#trialType').css('display','none');
				$('#trialTypeSelect').css('display','none');
				$('#dl-trial').css('display','none');
				$('#online-trial').attr('type','hidden');				
			}
		});
		var fname = getParameterByName('fname');
		var lname = getParameterByName('lname');
		var email = getParameterByName('email');
		var elqsource = getParameterByName('elqsource');
		$(document).ready(function(){
			$('#firstName').attr('value',fname);
			$('#lastName').attr('value',lname);
			$('#emailAddress').attr('value',email);
			if (elqsource != ""){
				$('#elqsource').attr('value',elqsource);
			}
		});
		function countryOptin(thisForm)
			{
				var x = document.getElementById('country').value;
				if (
				(x == "Canada") ||
				(x == "Germany") ||
				(x == "Australia")
				){
					document.getElementById('reqOptIn').style.display="block";
					document.getElementById('stateProv').style.display="block";
				}
				else{
					document.getElementById('reqOptIn').style.display="none";
					document.getElementById('stateProv').style.display="none";
				}
				if (
				(x == "Canada")
				){
					document.getElementById('stateProv').style.display="block";
				}
				else{
					document.getElementById('stateProv').style.display="none";
				}
			}		
				
		$(document).ready(function(){
			$('#yes-current').click(function(){
				$('#dl-isuser').css('display','inline');
				//alert('You clicked YES');
			});
			$('#no-new').click(function(){
				$('#dl-isuser').css('display','none');
				//alert('You clicked NO');
			});
			$("#dl-trial").click(function(){
				$("#dl-banner").css('display','block');
			});
			$("#online-trial").click(function(){
				$("#dl-banner").css('display','none');
			});
		});

// Validator
$(document).ready(function(){
	// Place ID's of all required fields here.
	required = ["firstName", "lastName", "emailAddress", "company", "busPhone", "userRange1", "country"];
	// If using an ID other than #email or #error then replace it here
	email = $("#emailAddress");
	errornotice = $("#error");
	// The text to show up within a field when it is incorrect
	emptyerror = "Please fill out this field.";
	emailerror = "Please enter a valid e-mail.";

	$("#free-trial").submit(function(){	
		//Validate required fields
		for (i=0;i<required.length;i++) {
			var input = $('#'+required[i]);
			if ((input.val() == "") || (input.val() == emptyerror)) {
				input.addClass("needsfilled");
				input.val(emptyerror);
				errornotice.fadeIn(750);
			} else {
				input.removeClass("needsfilled");
			}

		}
		// Validate the e-mail.
		if (!/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(email.val())) {
			email.addClass("needsfilled");
			email.val(emailerror);
		}

	// Clears any fields in the form when the user clicks on them
	$(":input").focus(function(){		
	   if ($(this).hasClass("needsfilled") ) {
			$(this).val("");
			$(this).removeClass("needsfilled");
	   }
	});

		//if any inputs on the page have the class 'needsfilled' the form will not submit
		if ($(":input").hasClass("needsfilled")) {
			return false;
		} else {
			errornotice.hide();
			return true;
		}
	});	
	
});

