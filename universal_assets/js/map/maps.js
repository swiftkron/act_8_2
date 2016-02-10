
switch(current_country){
	case 'Germany':
	find_out_more = 'Mehr Infos';
	email_heading = 'E-Mail:';
	location_heading = 'Stadt:';
	website_heading = 'Webseite:';
	address_heading = 'Adresse:';
	phone_heading = 'Telefon:';
	break;
	case 'France':
	find_out_more = 'En savoir plus';
	email_heading = 'Email :';
	location_heading = 'Ville :';
	website_heading = 'Site web :';
	address_heading = 'Adresse :';
	phone_heading = 'T&eacute;l&eacute;phone :';
	break;
	default:
	find_out_more = 'Find out more';
	email_heading = 'Email:';
	location_heading = 'Location:';
	website_heading = 'Website:';
	address_heading = 'Address:';
	phone_heading = 'Telephone:';
}


var singleStyles = [
				'img/map/diamond-pin.png',
		 		'img/map/platinum-pin.png',
		 		'img/map/gold-pin.png',
		 		'img/map/silver-pin.png',
				'img/map/bronze-pin.png',
				'img/map/certified-consultant-pin.png'
	
];
var clusterStyles = [
		{ 	
				url: singleStyles[0],
				width: 32,
				height: 106,
			
		},
		{ 	
				url: singleStyles[1],
				width: 32,
				height: 106,
		}, 
		{ 	
				url: singleStyles[2],
				width: 32,
				height: 106,
		}, 
		{ 	
				url: singleStyles[3],
				width: 32,
				height: 106,
		},

		{ 	
				url: singleStyles[4],
				width: 32,
				height: 106,
		},

		{ 	
				url: singleStyles[5],
				width: 32,
				height: 106,
		}
];

// config options for map clusters		
mcOptions = 
	{
   		 styles: clusterStyles,
   		 gridSize: 1,
   		 ignoreHidden: true,
   		 maxZoom: 17
	}

//set vars of items that are used multiple times
var opt = {
	nav: '#map-navigation',
	badgeDirectory: 'img/map/badges', 
	badgeDirectoryBig: 'img/map/badges/large', 
	mapContainer: '#map-container', 
	gridContainer: '#grid-container', 
	infowindowContainer: '#infowindow-container',
	infowindowClose: '.close-infowindow',
	resetMap: '.reset_map',
	countryClass: '.country', 
	regionClass: '.region', 
	cityClass: '.city', 
	levelClass: '.level',
	dimmed: 'dimmedNav'
}

//basic function to remove duplicates from arrays
function arrayUnique(a) 
	{
    	return a.reduce(function(p, c) {
    	    if (p.indexOf(c) < 0) p.push(c);
    	    return p;
    	}, []);
	}	
	
//compare array objects
function compare(a,b) 
	{
		if (a.level < b.level)
			return -1;
		if (a.level > b.level)
			return 1;
		return 0;
	}
function latsort(a,b) 
	{
		if (a.latitude < b.latitude)
			return -1;
		if (a.latitude > b.latitude)
			return 1;
		return 0;
	}
function lngsort(a,b) 
	{
		if (a.longitude < b.longitude)
			return -1;
		if (a.longitude > b.longitude)
			return 1;
		return 0;
	}
function outputPopup(dataPartner, i)
	{
	
		// for grid view only...
		if(i)
			{
				dataPartner = dataPartner.filter(function (el) {  return i.indexOf(el.id) > -1; });
				dataPartner = dataPartner[0];
			}
		//...end grid view only
		
		var contentString ='';
		
		contentString += '<div class="infowindow" >'+
		'<span class="close-infowindow"><img src="img/cross.png" alt="cross"></span>'+
		'<img class="infowindow-badge" src="'+opt.badgeDirectoryBig+'/'+dataPartner.level+'.png" alt="" />'+
		'<h1>'+dataPartner.company+'</h1>'+
		'<p><strong>'+location_heading+'</strong> '+dataPartner.city+'</p>';
		
		if(dataPartner.contact){contentString += '<p><strong>Contact:</strong> '+dataPartner.contact+'</p>';}
		if(dataPartner.email){contentString += '<p><strong>'+email_heading+'</strong> <a href="mailto:'+dataPartner.email+'">'+dataPartner.email+'</a></p>';}
		if(dataPartner.website){contentString += '<p><strong>'+website_heading+'</strong> '+dataPartner.website+'</p>';}
		if(dataPartner.phone){contentString += '<p><strong>'+phone_heading+'</strong> '+dataPartner.phone+'</p>';}
		if(dataPartner.address){contentString += '<p><strong>'+address_heading+'</strong> '+dataPartner.address+'</p>';}
		if(dataPartner.description){contentString += '<p>'+dataPartner.description+'</p>';}
		contentString += '</div>';
		return contentString;

	}
function closeAllInfoWindows(infowindow) 
	{
		for(var i=0;i<infowindow.length;i++) 
			{
				infowindow[i].close();
			}
	}	
//calculate bronze, silver or gold level partner to show the highest level partner pin to represent a group      
function partnerLevelCalculator(markers, numStyles) 
	{
		 var index = Math.min.apply(Math,markers.map(function(o){return o.partnerLevel;}));
		 var count = markers.length;
		 return { 
		 			index: index+1,	
		 			text: ''//count
		 	 	}
	}
	
function removeMarkers(markers)
	{
		for(var i = 0; i < markers.length; i++)
			{
				markers[i].setVisible(false);
  			}

	}
	
function replaceMarkers(markers)
	{
		for(var i = 0; i < markers.length; i++)
			{
				markers[i].setVisible(true);
  			}
	}
	
function generateInputs(destinationType, filter,filterOptions)
	{
					var destInputs = '';
					var uniqueDest=[];
					for(var i=0;i<filter.length; i++)
						{
							uniqueDest.push(filter[i][destinationType]);
						}
					
					uniqueDest = arrayUnique(uniqueDest.sort());
					
					for(var i=0;i<uniqueDest.length; i++)
						{
							switch(uniqueDest[i])
								{
									case 1:
										levelName = 'Platinum';
									break;
									case 2:
										levelName = 'Gold';
									break;
									case 3:
										levelName = 'Silver';
									break;
									case 4:
										levelName = 'Bronze';
									break;
									case 0:
										levelName = 'Diamond';
									break;
									case 5:
										levelName = 'Certified Consultant';
									break;
									default:
										levelName = uniqueDest[i];
								}
							
							if(filterOptions[destinationType].indexOf(String(uniqueDest[i])) > -1 ){checked = ' checked="checked" ';}else{checked='';}
							destInputs += '<li>'+
							'<input type="checkbox" '+checked+' value="'+destinationType+':'+uniqueDest[i]+'" id="'+destinationType+'_'+uniqueDest[i]+'_'+i+'" /> <label for="'+destinationType+'_'+uniqueDest[i]+'_'+i+'">'+levelName+'</label></li>';
						}
						
						

				//hide region option if one or less regions available for chosen country		
					if(destinationType == 'region' ){
						if(uniqueDest.length > 1 ){
							$('.region').parent().show();
						}else{
							$('.region').parent().hide();
						}
					}
					
				//output	
					$('.'+destinationType+'').html(destInputs);
	}

// jump to filtered result on map	    
function jump_to_filter(filterOptions, markers,map,markerCluster)
	{
		    	var country = [], region = [], city = [], level=[], view= [];

		    	$(opt.nav+' input').each(function()
		    		{
						if($(this).is(':checked'))
							{
						 		filterOptions = $(this).val().split(':');
						 		if(filterOptions[0] == 'country'){country[0] = filterOptions[1];}
						 		if(filterOptions[0] == 'region'){region.push(filterOptions[1]);}
						 		if(filterOptions[0] == 'city'){city.push(filterOptions[1]);}
						 		if(filterOptions[0] == 'level'){level.push(filterOptions[1]);}
						 		if(filterOptions[0] == 'view'){view.push(filterOptions[1]);}
							}
					});
					
					if(region.length<1){
						city=[];
						$(opt.cityClass).empty();
					}
				 
				var filterOptions = 
					{
						'country': country,
						'region': region,
						'city': city,
						'level': level,
						'view': view
					}
					
				//remove all markers
				removeMarkers(markers);
				
				// apply filter options and eliminate unwatned items from arrays			
				var filter = partners;
				
				if(filterOptions.country.length>0 )
					{
						filter = $.grep(filter, function (el) { return filterOptions.country.indexOf(el.country) > -1; } );
						generateInputs('region', filter,filterOptions);
						generateInputs('level', filter,filterOptions);
					}
					
				if(filterOptions.region.length>0)
					{
						filter = $.grep(filter,function (el) {  return filterOptions.region.indexOf(el.region) > -1; });
						markers = markers.filter( function (el) { return filterOptions.region.indexOf(String(el.partnerRegion)) > -1; });
						generateInputs('city', filter,filterOptions);
						generateInputs('level', filter,filterOptions);
					}	
						
				if(filterOptions.city.length>0)
					{
						filter = $.grep(filter, function (el) { return filterOptions.city.indexOf(el.city) > -1; });
						markers = markers.filter( function (el) { return filterOptions.city.indexOf(String(el.partnerCity)) > -1; });
						generateInputs('level', filter,filterOptions);
					}
					
				if(filterOptions.level.length>0)
					{
						filter = $.grep( filter, function (el) { return filterOptions.level.indexOf(String(el.level)) > -1; });
						markers = markers.filter( function (el) { return filterOptions.level.indexOf(String(el.partnerLevel)) > -1; });
					}
				if(filter.length<1)
					{
						var Errormessage = true;
					}else{
						var Errormessage = false;
					}			
					//put remaining markers back in
					replaceMarkers(markers);
					
					//don't need this bit now...but just leaving for reference in case I need it later - wipes and rebuilds the map	
  					/*markerCluster.setMap(null);
  					var markerCluster = new MarkerClusterer(map, markers,mcOptions);
  					markerCluster.setCalculator(partnerLevelCalculator);*/
  						

  						
			//output based on whether in map view or grid view				
				if(view[0] == 'map_view')
					{
						
						if(Errormessage){
							alert('No results');
						}else{
							
						//first sort the latitudes from low to high to get the lowest and highest values of lat/lng	
							filter.sort(latsort);	
							var lowestLat_lat = filter[0].latitude;
							var lowestLat_lng = filter[0].longitude;
							var highesttLat_lat = filter[filter.length-1].latitude;
							var highesttLat_lng = filter[filter.length-1].longitude;

						//then sort the longitudes from low to high to get the lowest and highest values of lat/lng	
							filter.sort(lngsort);	
							var lowestLng_lat = filter[0].latitude;
							var lowestLng_lng = filter[0].longitude;
							var highesttLng_lat = filter[filter.length-1].latitude;
							var highesttLng_lng = filter[filter.length-1].longitude;


						//put the lats and lngs into 2 arrays so we can sort again from low to high							
							lats = [lowestLng_lat,highesttLng_lat,highesttLat_lat,lowestLat_lat];
							lngs = [highesttLng_lng,lowestLng_lng,lowestLat_lng,highesttLat_lng];
							
						//sort them...this will mean that 0 & 3 are the lowest and highest of each
							lngs.sort(function(a, b){return a-b});
							lats.sort(function(a, b){return a-b});
							
						//set the first point as lowest lat and lng
						//and second point as highest lat lng
							var latlongs = [];
							latlongs[0] = [lats[0], lngs[0]];
							latlongs[1] = [lats[3], lngs[3]];

							var bounds = new google.maps.LatLngBounds();
							
							//sort array in order... platinum to bronze			
							filter.sort(compare);	//only really matters when using the clustering
							
							for(i = 0; i < latlongs.length; i++) 
								{  
									var position= new google.maps.LatLng(latlongs[i][0], latlongs[i][1]);
									bounds.extend(position);
									map.setZoom(map.getZoom()-1);  //little hack to redraw map when switching views without changing any filters...otherwise markers vanish
								}
							
							map.fitBounds(bounds); 
							// stop the map from zooming in too much on single markers
							if (map.getZoom() > 17) 
								{
									map.setZoom(17);  
								}
						}
					}else
				if(view[0] == 'grid_view' && !Errormessage)
					{
						$(opt.gridContainer).unbind();// required...but performance hit??
						$(opt.gridContainer).on('click','.grid_view_more_link', function(){
							var i = $(this).attr('data-infowindow');
							$(opt.infowindowContainer).html(outputPopup(filter, i)).show();
							$(opt.gridContainer + ' ul').fadeTo('fast', 0.3);
							$(opt.infowindowClose).show();
					         $('.successOverlay').show();
					         							//$('html').css({'overflow':'hidden'});
						});
					//close grid infowindow	
						$(opt.gridContainer).on('click', opt.infowindowClose, function() {
									$(opt.infowindowContainer).empty().hide();
									$(opt.gridContainer + ' ul').fadeTo('fast', 1);
									$(opt.infowindowClose).hide();
									$('.successOverlay').hide();
									//$('html').css({'overflow':'inherit'});
						});	

						if(Errormessage){
							alert('No results');
						}else{
							var output = '';
							
							//sort by level
							filter.sort(function(a, b) {return a.level - b.level;});
							
							for(var i = 0; i< filter.length; i++)	
								{
									output += '<li class="col-sm-4 "><img class="grid_view_level_badge" src="'+opt.badgeDirectory+'/'+filter[i].level+'.png" alt="" />'+
									'<p class="grid_view_company_name">'+filter[i].company+'</p>'+
									'<p class="grid_view_city">'+filter[i].city+'</p>'+
									'<p class="grid_view_more_link" data-infowindow="'+filter[i].id+'">'+find_out_more+' &gt;</p></li>';
								}
							$(opt.gridContainer+' ul').html(output);
						}
					}	
				//dim/undim navigation depending on choices	
				$(opt.nav+' ol').each(function(){
					if( $(this).find('li').length <1 )
						{
							$(this).parents('li').addClass(opt.dimmed);
						}
						else
						{
							$(this).parents('li').removeClass(opt.dimmed);
						}
				});

				
 	}
 var infowindow = null;	
//initialize the markercluster		
function initialize(current_country) 
	{
		    var center = new google.maps.LatLng(54.97403,  	-1.59217);
				var map = new google.maps.Map(document.getElementById('map'), 
					{
				  		zoom:7,
				  		center: center,
				  		minZoom: 3,
				  		scrollwheel: false,
				  		draggable: true,
				  		mapTypeId: google.maps.MapTypeId.ROADMAP
					});
			
			//set markers...
				var markers = [];
				var infowindow = [];
				
				for(var i=0; i < partners.length; i++) 
					{
				  		var dataPartner = partners[i];
				  		var image = singleStyles[dataPartner.level];
				  		var latLng = new google.maps.LatLng(dataPartner.latitude,dataPartner.longitude);
				  		var marker = new google.maps.Marker({
					  		position: latLng, 
					  		partnerLevel: dataPartner.level,
					  		partnerCity: dataPartner.city, 
					  		partnerRegion: dataPartner.region, 
					  		icon: image
					  		});
				  		markers.push(marker);
				  		
						infowindow.push(new google.maps.InfoWindow({  content: outputPopup(dataPartner)	}));

  						google.maps.event.addListener(marker, 'click', function(key) {
	  						return function() 
	  							{
  									infowindow[key].open(map,this);
  									map.setCenter(this.getPosition());
  								}
  						}(i));
					}

				var markerCluster = new MarkerClusterer(map, markers,mcOptions);
				markerCluster.setCalculator(partnerLevelCalculator);
			
			//click event for the filters
			    $(opt.nav).on('change', 'input', function() 
			    	{
				    	//clear regions and city selections if a new country is chosen
				    	if($(this).val().split(':')[0] == 'country')
							{
								$(opt.regionClass+' input:checkbox').prop("checked", false);	
								$(opt.cityClass+' input:checkbox').prop("checked", false);	
								$(opt.levelClass+' input:checkbox').prop("checked", false);	
							}


				    	if($(this).val().split(':')[1] == 'grid_view')
							{
								$(opt.mapContainer).hide();	
								$(opt.gridContainer).show();	
								
							}
				    	if($(this).val().split(':')[1] == 'map_view')
							{
								closeAllInfoWindows(infowindow);
								$(opt.gridContainer).hide();	
								$(opt.mapContainer).show();	
							}

						var filterOptions ='';
						//hide the dropdown menu once an option is chosen
						$(this).parents('ol').removeClass('active-category').slideUp();
						jump_to_filter(filterOptions,markers,map, markerCluster);
			    	});
			    
			    $(opt.nav).on('click', opt.resetMap, function()
			    	{
				    	//if($("input:checkbox").is(':checked'))
				    	//	{	// the if statement is mandatory otherwise the pins disappear on a second click of the reset button
			    				$(".filter-category input").prop("checked", false);	
			    				var t = {'country': [current_country],'region': ['blank'],'city': ['blank'],'level': ['blank'],'view': ['map_view']};
								$("#cb-"+current_country.replace(/\s+/g, '-')).prop("checked", true);	
								 jump_to_filter(t,markers,map, markerCluster);
							//}
			    	});	

				//start the map off in uk	    
				var t = {'country': [current_country],'region': ['blank'],'city': ['blank'],'level': ['blank'],'view': ['map_view']};
				$("#map_view").prop("checked", true);	
				$("#cb-"+current_country.replace(/\s+/g, '-')).prop("checked", true);	
				jump_to_filter(t,markers,map, markerCluster);
	}

//lets rock!
google.maps.event.addDomListener(window, 'load', initialize(current_country));
$(document).ready(function(){
//reset form inputs and hide grid view
	$("input:checkbox").prop("checked", false);	
	//$("input:radio").prop("checked", false);	
	$("#map_view").prop("checked", true);
	//$("#map_view").trigger('change');	

	$(opt.gridContainer).hide();	
});