/* This script requires jquery and jquery.cookie to run properly
 * Wrote by Mauricio Gutierrez (mgutierrez[at]4thoughtmarketing.com) from 4ThoughtMarketing to Swiftpage
 * v1.0*/
var cookieName="elqQs";								//The name of the cookie
var duration=1;										//Cookie duration in days
var separator=","									//The cookie-values will be concatenated using this separator
var campaignHTMLName="utm_campaign,elq_utm_campaign";	//The HTML name for the Campaign ID Field. If there are various fields with the same purpose, indicate them separated by commas (campaignId,C_Campaign_ID)
var sourceHTMLName="utm_source,elq_utm_source";//The HTML name for the Driver Campaign ID Field. If there are various fields with the same purpose, indicate them separated by commas (driverCampaignId,C_DriverCampaignID)
var mediumHTMLName="utm_medium,elq_utm_medium";			//The HTML name for the Lead Source Field. If there are various fields with the same purpose, indicate them separated by commas (leadSource,C_LeadSource)
var termHTMLName="utm_term,elq_utm_term";			//The HTML name for the Lead Source Field. If there are various fields with the same purpose, indicate them separated by commas (leadSource,C_LeadSource)
var pLocHTMLName="firstPage,elq_firstPage";							//The HTML name for the first page loaded by the user, this may have querystrings. If there are various fields with the same purpose, indicate them separated by commas (Location,FirstPageURL)
var wRefHTMLName="referrer,elq_referrer"										//The HTML name for the referrer. It usually is a search engine, may be something else. If there are various fields with the same purpose, indicate them separated by commas (referrer,visitSource)
var inputType="hidden";
//var inputType="text";
var cookieDomain="act";
var domainExtension=".com";
var altSeparator=".";
try{
	separator=="."?altSeparator=",":"";
}
catch(e){
}

$(function(){
	setQSValuesInCookie();
	cookieToHiddenFields();
});

function setQSValuesInCookie(){
	var utm_campaign=getParameterByName('utm_campaign');
	if(utm_campaign && utm_campaign.length>0){
		writeValueInCookie('campaign', utm_campaign);
	}
	var utm_source=getParameterByName('utm_source');
	if(utm_source && utm_source.length>0){
		writeValueInCookie('source', utm_source);
	}
	var utm_medium=getParameterByName('utm_medium');
	if(utm_medium && utm_medium.length>0){
		writeValueInCookie('medium', utm_medium);
	}
	var utm_term=getParameterByName('utm_term');
	if(utm_term && utm_term.length>0){
		writeValueInCookie('term', utm_term);
	}
	var existingQS=$.cookie(cookieName);
	(existingQS && existingQS.length>0)?existingQS=existingQS.split(separator):existingQS="";
	var localReferrer = document.referrer.replace(new RegExp(separator, 'g'), altSeparator);
	var updateReferrer = (document.referrer.length>0 && document.referrer.split('.').length>0 && document.referrer.split('.')[0].indexOf(cookieDomain)==-1 && document.referrer.split('.')[1].indexOf(cookieDomain)==-1);
	if(updateReferrer){
		writeValueInCookie('referrer', localReferrer);
	}
	var localScpLocation = document.location.href.replace(new RegExp(separator, 'g'), altSeparator);
	var writeLocation = existingQS.length<5 || existingQS[5].length==0;
	if(writeLocation){
		writeValueInCookie('location', localScpLocation);
	}
}

function writeValueInCookie(varName, valueToWrite){
	var cky=$.cookie(cookieName);
	if(cky && cky.length>0){
		cky=cky.split(separator);
	}
	else{
		$.cookie(cookieName, ""+separator+""+separator+""+separator+""+separator+""+separator+"", { expires: duration, path: '/', domain:"."+cookieDomain+domainExtension });
		cky=$.cookie(cookieName);
		cky=cky.split(separator);
	}
	if(!varInCookieHasValue(varName)){	//Update the value in the cookie
		switch(varName){
			case "campaign":
				$.cookie(cookieName, valueToWrite+separator+cky[1]+separator+cky[2]+separator+cky[3]+separator+cky[4]+separator+cky[5], { expires: duration, path: '/', domain:"."+cookieDomain+domainExtension });
			break;
			case "source":
				$.cookie(cookieName, cky[0]+separator+valueToWrite+separator+cky[2]+separator+cky[3]+separator+cky[4]+separator+cky[5], { expires: duration, path: '/', domain:"."+cookieDomain+domainExtension });
			break;
			case "medium":
				$.cookie(cookieName, cky[0]+separator+cky[1]+separator+valueToWrite+separator+cky[3]+separator+cky[4]+separator+cky[5], { expires: duration, path: '/', domain:"."+cookieDomain+domainExtension });
			break;
			case "term":
				$.cookie(cookieName, cky[0]+separator+cky[1]+separator+cky[2]+separator+valueToWrite+separator+cky[4]+separator+cky[5], { expires: duration, path: '/', domain:"."+cookieDomain+domainExtension });
			break;
			case "referrer":
				$.cookie(cookieName, cky[0]+separator+cky[1]+separator+cky[2]+separator+cky[3]+separator+valueToWrite+separator+cky[5], { expires: duration, path: '/', domain:"."+cookieDomain+domainExtension });
			break;
			case "location":
				$.cookie(cookieName, cky[0]+separator+cky[1]+separator+cky[2]+separator+cky[3]+separator+cky[4]+separator+valueToWrite, { expires: duration, path: '/', domain:"."+cookieDomain+domainExtension });
			break;
			default:
			break;
		}
	}
}

function varInCookieHasValue(varName){
	var ck=$.cookie(cookieName);
	if(ck && ck.length>0){
		ck=ck.split(separator);
		switch(varName){
			case "campaign":
				return (ck[0].length>0 && ck[0]!="null");
			break;
			case "source":
				return (ck[1].length>0 && ck[1]!="null");
			break;
			case "medium":
				return (ck[2].length>0 && ck[2]!="null");
			break;
			case "term":
				return (ck[3].length>0 && ck[3]!="null");
			break;
			case "referrer":
				return (ck[4].length>0 && ck[4]!="null");
			break;
			case "location":
				return (ck[5].length>0 && ck[5]!="null");
			break;
			default:
			break;
		}
	}
	return false;
}

function cookieToHiddenFields(){
	var cookieQS=$.cookie(cookieName);
	if(cookieQS && cookieQS.length){
		cookieQS=cookieQS.split(separator);
		if(cookieQS && cookieQS.length){
			$('form').each(function(i) {
				var actionUrl=$(this).attr("action");
				if(actionUrl && actionUrl.indexOf('eloqua')!=-1){
					var utm_campaignVal=cookieQS[0];
					if(utm_campaignVal && utm_campaignVal.length && utm_campaignVal!="null"){
						var cmpArr=campaignHTMLName.split(',');
						for(i in cmpArr){
							var cidSelector=$(this).find('input[name='+cmpArr[i].trim()+']');
							if(cidSelector && cidSelector.length){
								cidSelector.val(utm_campaignVal);
							}else if(inputType=="text")
								$(this).append('<div>'+cmpArr[i].trim()+' <input type='+inputType+' name="'+cmpArr[i].trim()+'" value="'+utm_campaignVal+'" /></div>');
							else
								$(this).append('<input type='+inputType+' name="'+cmpArr[i].trim()+'" value="'+utm_campaignVal+'" />');
						}
					}
					var utm_sourceVal = cookieQS[1];
					if(utm_sourceVal && utm_sourceVal.length && utm_sourceVal!="null"){
						var srcArr=sourceHTMLName.split(',');
						for(i in srcArr){
							var dcidSelector=$(this).find('input[name='+srcArr[i]+']');
							if(dcidSelector && dcidSelector.length){
								dcidSelector.val(utm_sourceVal);
							}else if(inputType=="text")
								$(this).append('<div>'+srcArr[i]+' <input type='+inputType+' name="'+srcArr[i]+'" value="'+utm_sourceVal+'" /></div>');
							else
								$(this).append('<input type='+inputType+' name="'+srcArr[i]+'" value="'+utm_sourceVal+'" />');
						}
					}
					var utm_mediumVal=cookieQS[2];
					if(utm_mediumVal && utm_mediumVal.length && utm_mediumVal!="null"){
						var mdmArr=mediumHTMLName.split(',');
						for(i in mdmArr){
							var lsrSelector=$(this).find('input[name='+mdmArr[i]+']');
							if(lsrSelector && lsrSelector.length){
								lsrSelector.val(utm_mediumVal);
							}else if(inputType=="text")
								$(this).append('<div>'+mdmArr[i]+' <input type='+inputType+' name="'+mdmArr[i]+'" value="'+utm_mediumVal+'" /></div>');
							else
								$(this).append('<input type='+inputType+' name="'+mdmArr[i]+'" value="'+utm_mediumVal+'" />');
						}
					}
					var utm_termVal=cookieQS[3];
					if(utm_termVal && utm_termVal.length && utm_termVal!="null"){
						var trmArr=termHTMLName.split(',');
						for(i in trmArr){
							var refSelector=$(this).find('input[name='+trmArr[i]+']');
							if(refSelector && refSelector.length){
								refSelector.val(utm_termVal);
							}else if(inputType=="text")
								$(this).append('<div>'+trmArr[i]+' <input type='+inputType+' name="'+trmArr[i]+'" value="'+utm_termVal+'" /></div>');
							else
								$(this).append('<input type='+inputType+' name="'+trmArr[i]+'" value="'+utm_termVal+'" />');
						}
					}
					var refVal=cookieQS[4];
					if(refVal && refVal.length && refVal!="null"){
						var refValArr=wRefHTMLName.split(',');
						for(i in refValArr){
							var refSelector=$(this).find('input[name='+refValArr[i]+']');
							if(refSelector && refSelector.length){
								refSelector.val(refVal);
							}else if(inputType=="text")
								$(this).append('<div>'+refValArr[i]+' <input type='+inputType+' name="'+refValArr[i]+'" value="'+refVal+'" /></div>');
							else
								$(this).append('<input type='+inputType+' name="'+refValArr[i]+'" value="'+refVal+'" />');
						}
					}
					var locVal=cookieQS[5];
					if(locVal && locVal.length && locVal!="null"){
						var locValArr=pLocHTMLName.split(',');
						for(i in locValArr){
							var locSelector=$(this).find('input[name='+locValArr[i]+']');
							if(locSelector && locSelector.length){
								locSelector.val(locVal);
							}else if(inputType=="text")
								$(this).append('<div>'+locValArr[i]+' <input type='+inputType+' name="'+locValArr[i]+'" value="'+locVal+'" /></div>');
							else
								$(this).append('<input type='+inputType+' name="'+locValArr[i]+'" value="'+locVal+'" />');
						}
					}
				}
			});
		}
	}
}

function setValueInField(value, field, fieldType){
	if(fieldType && fieldType.length)
		var myField=$(fieldType+'[name="'+field+'"]');
	else
		var myField=$('input[name="'+field+'"]');
	if(myField && myField.length){
		myField.val(value);
		return true;
	}
	return false;
}

function getParameterByName(name) {
	var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
	match = match ? decodeURIComponent(match[1].replace(/\+/g, ' ')) : null;
	if(match && match.length>0){
		return match.match(/[^a-z0-9\-\_]/gi)==null?match:null;
	}
	return null;
}
