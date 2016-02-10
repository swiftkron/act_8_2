$(document).ready(function(){

	$('.needs-grid li:nth-child(4n)').addClass('end');
	
	$('.needs-grid li').click(function(){
		$('.needs-grid li .hover').hide();
		$(this).find('.hover').show();
	});
	
	$('.needs-grid li').hover(function(){
		$(this).find('.hover').fadeIn('fast');
	}, function(){
		$(this).find('.hover').fadeOut('fast');
	});
	
		
	$('#form164 a.btn-orange').click(function(){
		$('#form164').submit();
	})
	
	$.ajax({
		type: "GET",
		url: "/media/en-us/marketplace/featured-partners.xml",
		dataType: "xml",
		success: function(xml) {
			$(xml).find('partner').each(function(){
				var name = $(this).find('name').text();
				var variablename = $(this).find('variablename').text();
				
				if($('.featured-grid ul li a').text().indexOf(name) == -1) {
					$('.featured-grid ul').append('<li><a href="/marketplace/business-list.html?partner='+variablename+'">'+name+'<br /><img src="/media/en-us/marketplace/featured/logo-'+variablename+'.png" alt="'+name+'" /></a></li>');
				}
				
			});
			
			$('.featured-grid ul li').first().addClass('first');
			$('.featured-grid ul li').last().addClass('end');
		}
	});
	
	$.ajax({
		type: "GET",
		url: "/media/en-us/marketplace/solutions.xml",
		dataType: "xml",
		success: function(xml) {
			$(xml).find('solution').each(function(){
				var name = $(this).find('name').text();
				var partner = $(this).find('partner').text();
				var programlevel = $(this).find('programlevel').text();
				var businessneed = $(this).find("businessneed").text();
				var description = $(this).find('description').text();
				var boximage = $(this).find('boximage').text();
				var price = $(this).find('price').text();
				var url = $(this).find('url').text();
				
				if($('#businessNeed .filter-options label').text().indexOf(businessneed) == -1) {
					$('#businessNeed .filter-options').append('<li><input type="checkbox" name="'+businessneed.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'" id="'+businessneed.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'" value="'+businessneed.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'" /> <label for="'+businessneed.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'">'+businessneed+'</label></li>');
				}
				if($('#solution .filter-options a').text().indexOf(name) == -1) {
					$('#solution .filter-options').append('<li><a href="javascript:void(0)" class="'+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'">'+name+'</a></li>');
				}
				if($('#jumpToPartner .filter-options a').text().indexOf(partner) == -1) {
					$('#jumpToPartner .filter-options').append('<li><a href="javascript:void(0)" class="'+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'">'+partner+'</a></li>');
				}
				
			});
			
			var $businessneedlist = $('#businessNeed .filter-options');
			var $businessneedlistLi = $('li',$businessneedlist);
			$businessneedlistLi.sort(function(a, b){
			var keyA = $(a).find('label').text().toUpperCase();
			var keyB = $(b).find('label').text().toUpperCase();
			return (keyA > keyB) ? 1 : -1;
			});
			$.each($businessneedlistLi, function(index, row){
				$businessneedlist.append(row);
			});
			
			var $solutionlist = $('#solution .filter-options');
			var $solutionlistLi = $('li',$solutionlist);
			$solutionlistLi.sort(function(a, b){
			var keyA = $(a).find('a').text().toUpperCase();
			var keyB = $(b).find('a').text().toUpperCase();
			return (keyA > keyB) ? 1 : -1;
			});
			$.each($solutionlistLi, function(index, row){
				$solutionlist.append(row);
			});
			
			var $partnerlist = $('#jumpToPartner .filter-options');
			var $partnerlistLi = $('li',$partnerlist);
			$partnerlistLi.sort(function(a, b){
			var keyA = $(a).find('a').text().toUpperCase();
			var keyB = $(b).find('a').text().toUpperCase();
			return (keyA > keyB) ? 1 : -1;
			});
			$.each($partnerlistLi, function(index, row){
				$partnerlist.append(row);
			});
			
			$('#solution.select ul li a').click(function(){
				var selectedValue = $(this).attr('class');
				$('.filter-options input[type="checkbox"]').prop('checked',false);
				var businessNeedCount = 0;
				var businessNeedClass = '';
				businessNeedText = '';
				
				$('.partners-list').html('');
				$('.dropdown').hide();
				$('.dropdown-expand').hide();
				$('.dropdown').show();
				
				$(xml).find('solution').each(function(){
					var name = $(this).find('name').text();
					var partner = $(this).find('partner').text();
					var programlevel = $(this).find('programlevel').text();
					var businessneed = $(this).find('businessneed').text();
					var description = $(this).find('description').text();
					var boximage = $(this).find('boximage').text();
					var price = $(this).find('price').text();
					var url = $(this).find('url').text();
					
					if(selectedValue == name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")) {
						var duplicateCount = 0;
						
						$('#solutions-container .partner-row').each(function(){
							if($(this).hasClass(selectedValue)){
								duplicateCount++;
							}
						});
						
						if(duplicateCount == 0) {
							$('#solutions-container').append('<div class="partner-row '+businessneed+' '+programlevel+' '+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+' '+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'"><div class="partner-logo"><a href="'+url+'"><img src="'+boximage+'" alt="'+name+'" /></a></div><div class="partner-description"><h2><a href="'+url+'">'+name+'</a></h2><div class="buynow"><div><p class="price"><strong>'+price+'</strong><br /><a href="'+url+'" class="btn-orange"><strong>Buy Now</strong></a></p></div></div><p>'+description+'</p></div></div>');
						};
						
						businessNeedCount++;
						businessNeedClass = businessneed;
						businessNeedDisplay = businessNeedClass.toLowerCase().replace(/\b[a-z]/g, function(letter) {
						    return letter.toUpperCase();
						});
						businessNeedDisplay = businessNeedDisplay.replace("Cti-", "CTI & ").replace("Crm", "CRM").replace("Erp", "ERP").replace("Reporting-", "Reporting & ").replace("-", " ").replace("-", " ");
						if(businessNeedCount <= 1){
							businessNeedText += businessNeedDisplay;
						} else {
							if(businessNeedText.indexOf(businessNeedDisplay) == -1) {
								businessNeedText += ', ' + businessNeedDisplay;
							}
						}
					}
					
				})	
				
				$('.partners h2 .current').html(businessNeedText);
			});
			
			$('#jumpToPartner.select ul li a').click(function(){
				var selectedValue = $(this).attr('class');
				$('.filter-options input[type="checkbox"]').prop('checked',false);
				var businessNeedCount = 0;
				var businessNeedClass = '';
				businessNeedText = '';
				
				$('.partners-list').html('');
				$('.dropdown').hide();
				$('.dropdown-expand').hide();
				$('.dropdown').show();
				
				$(xml).find('solution').each(function(){
					var name = $(this).find('name').text();
					var partner = $(this).find('partner').text();
					var programlevel = $(this).find('programlevel').text();
					var businessneed = $(this).find('businessneed').text();
					var description = $(this).find('description').text();
					var boximage = $(this).find('boximage').text();
					var price = $(this).find('price').text();
					var url = $(this).find('url').text();
					
					if(selectedValue == partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")) {
						var duplicateCount = 0;
						var solutionText = name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-");
						
						$('#solutions-container .partner-row').each(function(){
							if($(this).hasClass(solutionText)){
								duplicateCount++;
							}
						});
						
						if(duplicateCount == 0) {
							$('#solutions-container').append('<div class="partner-row '+businessneed+' '+programlevel+' '+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+' '+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'"><div class="partner-logo"><a href="'+url+'"><img src="'+boximage+'" alt="'+name+'" /></a></div><div class="partner-description"><h2><a href="'+url+'">'+name+'</a></h2><div class="buynow"><div><p class="price"><strong>'+price+'</strong><br /><a href="'+url+'" class="btn-orange"><strong>Buy Now</strong></a></p></div></div><p>'+description+'</p></div></div>');
						};
						
						businessNeedCount++;
						businessNeedClass = businessneed;
						businessNeedDisplay = businessNeedClass.toLowerCase().replace(/\b[a-z]/g, function(letter) {
						    return letter.toUpperCase();
						});
						businessNeedDisplay = businessNeedDisplay.replace("Cti-", "CTI & ").replace("Crm", "CRM").replace("Erp", "ERP").replace("Reporting-", "Reporting & ").replace("-", " ").replace("-", " ");
						if(businessNeedCount <= 1){
							businessNeedText += businessNeedDisplay;
						} else {
							if(businessNeedText.indexOf(businessNeedDisplay) == -1) {
								businessNeedText += ', ' + businessNeedDisplay;
							}
						}
					}
					
					$('.partners h2 .current').html(businessNeedText);
				})	
			});
		}
	});
	
	
	
	// Begin scripts for business list page
	
	function getUrlVars() {
	    var vars = {};
	    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
	        vars[key] = value;
	    });
	    return vars;
	}
	
	var businessNeedVar = getUrlVars()["businessNeed"];
	var programLevelVar = getUrlVars()["programLevel"];
	var solutionVar = getUrlVars()["solution"];
	var partnerVar = getUrlVars()["partner"];
	var variableText = '';
	
	if (businessNeedVar) {
		variableText = businessNeedVar;
		
		displayText = variableText.toLowerCase().replace(/\b[a-z]/g, function(letter) {
		    return letter.toUpperCase();
		});
		displayText = displayText.replace("Cti-", "CTI & ").replace("Crm", "CRM").replace("Erp", "ERP").replace("Reporting-", "Reporting & ").replace("-", " ").replace("-", " ");
			
		$('#businessNeed .filter-options input[type="checkbox"]').each(function(){
			if($(this).is('#'+variableText)){
				$(this).attr('checked','checked');
			}
		});
		
		$('.partners h2 .current').html(displayText);
		//$('.partners-list .'+variableText+'').show();
		
		$.ajax({
			type: "GET",
			url: "~/media/site/sage%20act/marketplace/solutions.xml",
			dataType: "xml",
			success: function(xml) {
				$(xml).find('solution').each(function(){
					var name = $(this).find('name').text();
					var partner = $(this).find('partner').text();
					var programlevel = $(this).find('programlevel').text();
					var businessneed = $(this).find('businessneed').text();
					var description = $(this).find('description').text();
					var boximage = $(this).find('boximage').text();
					var price = $(this).find('price').text();
					var url = $(this).find('url').text();
					
					if(variableText == businessneed.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")) {
						$('#solutions-container').append('<div class="partner-row '+businessneed+' '+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+' '+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'"><div class="partner-logo"><a href="'+url+'"><img src="'+boximage+'" alt="'+name+'" /></a></div><div class="partner-description"><h2><a href="'+url+'">'+name+'</a></h2><div class="buynow"><div><p class="price"><strong>'+price+'</strong><br /><a href="'+url+'" class="btn-orange"><strong>Buy Now</strong></a></p></div></div><p>'+description+'</p></div></div>');
					}
				});
			}
		});
		
	} else if (solutionVar) {
		variableText = solutionVar;
		var businessNeedCount = 0;
		var businessNeedClass = '';
		businessNeedText = '';
		
		
		$.ajax({
			type: "GET",
			url: "~/media/site/sage%20act/marketplace/solutions.xml",
			dataType: "xml",
			success: function(xml) {
				$(xml).find('solution').each(function(){
					var name = $(this).find('name').text();
					var partner = $(this).find('partner').text();
					var programlevel = $(this).find('programlevel').text();
					var businessneed = $(this).find('businessneed').text();
					var description = $(this).find('description').text();
					var boximage = $(this).find('boximage').text();
					var price = $(this).find('price').text();
					var url = $(this).find('url').text();
					
					if(variableText == name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")) {
						var duplicateCount = 0;
						var solutionText = name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-");
						
						$('#solutions-container .partner-row').each(function(){
							if($(this).hasClass(solutionText)){
								duplicateCount++;
							}
						});
						
						if(duplicateCount == 0) {
							$('#solutions-container').append('<div class="partner-row '+businessneed+' '+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+' '+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'"><div class="partner-logo"><a href="'+url+'"><img src="'+boximage+'" alt="'+name+'" /></a></div><div class="partner-description"><h2><a href="'+url+'">'+name+'</a></h2><div class="buynow"><div><p class="price"><strong>'+price+'</strong><br /><a href="'+url+'" class="btn-orange"><strong>Buy Now</strong></a></p></div></div><p>'+description+'</p></div></div>');
						};
						
						businessNeedCount++;
						businessNeedClass = businessneed;
						businessNeedDisplay = businessNeedClass.toLowerCase().replace(/\b[a-z]/g, function(letter) {
						    return letter.toUpperCase();
						});
						businessNeedDisplay = businessNeedDisplay.replace("Cti-", "CTI & ").replace("Crm", "CRM").replace("Erp", "ERP").replace("Reporting-", "Reporting & ").replace("-", " ").replace("-", " ");
						if(businessNeedCount <= 1){
							businessNeedText += businessNeedDisplay;
						} else {
							if(businessNeedText.indexOf(businessNeedDisplay) == -1) {
								businessNeedText += ', ' + businessNeedDisplay;
							}
						}
					}
					
					$('.partners h2 .current').html(businessNeedText);
				});
			}
		});
		
	} else if (partnerVar) {
		variableText = partnerVar;
		var businessNeedCount = 0;
		var businessNeedClass = '';
		businessNeedText = '';
		
		
		$.ajax({
			type: "GET",
			url: "~/media/site/sage%20act/marketplace/solutions.xml",
			dataType: "xml",
			success: function(xml) {
				$(xml).find('solution').each(function(){
					var name = $(this).find('name').text();
					var partner = $(this).find('partner').text();
					var programlevel = $(this).find('programlevel').text();
					var businessneed = $(this).find('businessneed').text();
					var description = $(this).find('description').text();
					var boximage = $(this).find('boximage').text();
					var price = $(this).find('price').text();
					var url = $(this).find('url').text();
					
					if(variableText == partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")) {
						var duplicateCount = 0;
						var solutionText = name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-");
						
						$('#solutions-container .partner-row').each(function(){
							if($(this).hasClass(solutionText)){
								duplicateCount++;
							}
						});
						
						if(duplicateCount == 0) {
							$('#solutions-container').append('<div class="partner-row '+businessneed+' '+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+' '+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'"><div class="partner-logo"><a href="'+url+'"><img src="'+boximage+'" alt="'+name+'" /></a></div><div class="partner-description"><h2><a href="'+url+'">'+name+'</a></h2><div class="buynow"><div><p class="price"><strong>'+price+'</strong><br /><a href="'+url+'" class="btn-orange"><strong>Buy Now</strong></a></p></div></div><p>'+description+'</p></div></div>');
						};
						
						businessNeedCount++;
						businessNeedClass = businessneed;
						businessNeedDisplay = businessNeedClass.toLowerCase().replace(/\b[a-z]/g, function(letter) {
						    return letter.toUpperCase();
						});
						businessNeedDisplay = businessNeedDisplay.replace("Cti-", "CTI & ").replace("Crm", "CRM").replace("Erp", "ERP").replace("Reporting-", "Reporting & ").replace("-", " ").replace("-", " ");
						if(businessNeedCount <= 1){
							businessNeedText += businessNeedDisplay;
						} else {
							if(businessNeedText.indexOf(businessNeedDisplay) == -1) {
								businessNeedText += ', ' + businessNeedDisplay;
							}
						}
					}
					
					$('.partners h2 .current').html(businessNeedText);
				});
			}
		});
	}
	
	

	/*
	$('html').click(function(){
		$('.dropdown-expand').hide();
	});
	$('.dropdown').click(function(evt){
		if(!evt) { 
			evt=window.event;
		}
		evt.stopPropagation();
		$('.dropdown-expand').hide();
		$(this).find('.dropdown-expand').show();
	});	
	$('.dropdown-expand').click(function(){
		evt.stopPropagation();
	});
	*/
	
	
	$('.dropdown span').click(function(){
		$('.dropdown-expand').hide();
		$(this).siblings('.dropdown-expand').slideDown('fast').show();
		
		$(this).parent().hover(function() {
		}, function(){	
			$(this).parent().find(".dropdown-expand").slideUp('fast'); //When the mouse hovers out of the subnav, move it back up
		});
	});	
	
	
	$('.dropdown-expand .apply-btn').click(function(){
		var businessNeedChecks = '';
		var programLevelChecks = '';
		var checkCount = 0;
		var levelCount = 0;
		var solutioncount = 0;
		businessNeedText = '';
		
		$('.partners-list').html('');
		$('.dropdown-expand').hide();
		
		if($(this).parent().parent().is('#businessNeed')){		
				
			$.ajax({
				type: "GET",
				url: "~/media/site/sage%20act/marketplace/solutions.xml",
				dataType: "xml",
				success: function(xml) {
					$('#businessNeed .filter-options input[type="checkbox"]').each(function(index){	
						if($(this).is(':checked')){
							checkCount++;
							businessNeedChecks = $(this).val();
							businessNeedDisplay = businessNeedChecks.toLowerCase().replace(/\b[a-z]/g, function(letter) {
							    return letter.toUpperCase();
							});
							businessNeedDisplay = businessNeedDisplay.replace("Cti-", "CTI & ").replace("Crm", "CRM").replace("Erp", "ERP").replace("Reporting-", "Reporting & ").replace("QuickStudy-", "QuickStudy ").replace("-", " ").replace("-", " ");
							if(checkCount <= 1){
								businessNeedText += businessNeedDisplay;
							} else {
								businessNeedText += ', ' + businessNeedDisplay;
							}
							
							$('.partners h2 .current').html(businessNeedText);
							//$('.partners-list .'+businessNeedChecks+'').show();
						
							$(xml).find('solution').each(function(){
								var name = $(this).find('name').text();
								var partner = $(this).find('partner').text();
								var programlevel = $(this).find('programlevel').text();
								var businessneed = $(this).find('businessneed').text();
								var description = $(this).find('description').text();
								var boximage = $(this).find('boximage').text();
								var price = $(this).find('price').text();
								var url = $(this).find('url').text();
								
								if(businessNeedChecks == businessneed.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")) {
									var duplicateCount = 0;
									var solutionText = name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-");
									
									$('#solutions-container .partner-row').each(function(){
										if($(this).hasClass(solutionText)){
											duplicateCount++;
										}
									});
									
									if(duplicateCount == 0) {
										$('#solutions-container').append('<div class="partner-row '+businessneed+' '+programlevel+' '+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+' '+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'"><div class="partner-logo"><a href="'+url+'"><img src="'+boximage+'" alt="'+name+'" /></a></div><div class="partner-description"><h2><a href="'+url+'">'+name+'</a></h2><div class="buynow"><div><p class="price"><strong>'+price+'</strong><br /><a href="'+url+'" class="btn-orange"><strong>Buy Now</strong></a></p></div></div><p>'+description+'</p></div></div>');
									};
								}
							});
					
							levelCount = 0;
						}
					
					})
					if(levelCount == 0) {
						$('#programLevel .filter-options input[type="checkbox"]').prop('checked',false);
					}
					if(checkCount == 0) {
						$('.partners-list .partner-row').show();
						businessNeedText = 'All';
					}
				}
			})	
		}
		if($(this).parent().parent().is('#programLevel')){	
			$.ajax({
				type: "GET",
				url: "~/media/site/sage%20act/marketplace/solutions.xml",
				dataType: "xml",
				success: function(xml) {
					$('#programLevel .filter-options input[type="checkbox"]').each(function(index){	
						if($(this).is(':checked')){
							levelCount++;
							programLevelChecks = $(this).val();
							//$('.partners-list .'+businessNeedChecks+'').show();
						
							$(xml).find('solution').each(function(){
								var name = $(this).find('name').text();
								var partner = $(this).find('partner').text();
								var programlevel = $(this).find('programlevel').text();
								var businessneed = $(this).find('businessneed').text();
								var description = $(this).find('description').text();
								var boximage = $(this).find('boximage').text();
								var price = $(this).find('price').text();
								var url = $(this).find('url').text();
								
								if(programLevelChecks == programlevel.toLowerCase()) {
									$('#solutions-container').append('<div class="partner-row '+businessneed+' '+programlevel+' '+name.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+' '+partner.toLowerCase().replace(" ","-").replace(" ","-").replace(" ","-")+'"><div class="partner-logo"><a href="'+url+'"><img src="'+boximage+'" alt="'+name+'" /></a></div><div class="partner-description"><h2><a href="'+url+'">'+name+'</a></h2><div class="buynow"><div><p class="price"><strong>'+price+'</strong><br /><a href="'+url+'" class="btn-orange"><strong>Buy Now</strong></a></p></div></div><p>'+description+'</p></div></div>');
								}
							});
					
							levelCount = 0;
						}
					
					})
					if(levelCount == 0) {
						$('#programLevel .filter-options input[type="checkbox"]').prop('checked',false);
					}
					if(checkCount == 0) {
						$('.partners-list .partner-row').show();
						businessNeedText = 'All';
					}
				}
			})
			$('#programLevel .filter-options input[type="checkbox"]').each(function(index){
				if($(this).is(':checked')){
					levelCount++;
					programLevelChecks = $(this).val();
					$('.partners-list .'+programLevelChecks+'').show();
					checkCount = 0;
				}
			})
			if(checkCount == 0) {
				$('#businessNeed .filter-options input[type="checkbox"]').prop('checked',false);
				businessNeedText = 'All';
			}
		}
		
		
		//alert('variableText is equal to '+variableText);
		//$('.partners h2 .current').html(businessNeedText);
	});
	
	$('.dropdown-expand .clear-filter').click(function(){
		$(this).siblings('ul').find('input[type=checkbox]').attr('checked', false);
	});
	
	

});
