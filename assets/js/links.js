$(document).ready(function(){

// SITEWIDE LINKS

/******** DEACTIVATED 	
// Main Nav	
	$('#nav-logo').click(function(){
		location.href="/";
	});
	$('#nav-whychoose').click(function(){
		location.href="/why-choose-act";
	});
	// Products
	$('#nav-editions').click(function(){
		location.href="/products";
	});
	$('#nav-actpro').click(function(){
		location.href="/products/act-pro";
	});
	$('#nav-actpremium').click(function(){
		location.href="/products/act-premium";
	});
	$('#nav-cloud').click(function(){
		location.href="/products/act-cloud";
	});
	$('#nav-whatsnew').click(function(){
		location.href="/products/upgrade";
	});
	$('#nav-offer').click(function(){
		window.open('/lp/qbp','_blank');
	});
	// Marketplace
	$('#nav-marketplace').click(function(){
		location.href="/marketplace";
	});
	// Support
	$('#nav-support').dblclick(function(){
		location.href="/support";
	});
	$('#nav-gettingstarted').click(function(){
		location.href="/support/getting-started";
	});
	$('#nav-businesscare').click(function(){
		location.href="/support/business-care";
	});
	$('#nav-training').click(function(){
		location.href="/support/training-opportunities";
	});
	$('#nav-kb').click(function(){
		window.open('http://kb.act.com','_blank');
	});
	$('#nav-dbservices').click(function(){
		location.href="/support/database-services";
	});
	$('#nav-download').click(function(){
		location.href="/support/download-center";
	});
	$('#nav-obsolescence').click(function(){
		location.href="/support/obsolescence-policies";
	});
	// Community
	$('#nav-community').click(function(){
		window.open('http://community.act.com','_blank');
	});
	// About
	$('#nav-about').click(function(){
		window.open('http://www.swiftpage.com','_blank');
	});
***************************/

// Utility
	$('#regionSelector').click(function(){
		location.href="/select-region";
	});


// LP Nav
	$('#nav-phone').click(function(){
		location.href="tel:1-866-421-7746";
	});

// Footer	
	$('#sm-facebook').click(function(){
		window.open('/facebook','_blank');
	});
	$('#sm-twitter').click(function(){
		window.open('/twitter','_blank');
	});
	$('#sm-linkedin').click(function(){
		window.open('/linkedin','_blank');
	});
	$('#sm-googleplus').click(function(){
		window.open('/googleplus','_blank');
	});
	$('#sm-youtube').click(function(){
		window.open('/youtube','_blank');
	});
	$('#sm-blog').click(function(){
		window.open('http://blog.act.com','_blank');
	});

	$('#ftr-actpro').click(function(){
		location.href="/products/act-pro";
	});
	$('#ftr-actpremium').click(function(){
		location.href="/products/act-premium";
	});
	$('#ftr-acthosted').click(function(){
		location.href="/products/act-premium-hosted";
	});
	$('#ftr-actcloud').click(function(){
		location.href="/products/act-cloud";
	});
	$('#ftr-gettingstarted').click(function(){
		location.href="/support/getting-started";
	});
	$('#ftr-support').click(function(){
		location.href="/support";
	});
	$('#ftr-download').click(function(){
		location.href="/support/download-center";
	});
	$('#ftr-marketplace').click(function(){
		location.href="/marketplace";
	});
	$('#ftr-find-partner').click(function(){
		location.href="/partners";
	});

	$('#ftr-careers').click(function(){
		window.open('http://www.swiftpage.com/en-us/about/careers','_blank');
	});

	$('#ftr-contact').click(function(){
		window.open('http://www.swiftpage.com/en-us/contact-us.shtml','_blank');
	});
	$('#ftr-privacy').click(function(){
		window.open('http://www.swiftpage.com/privacy-policy','_blank');
	});
	$('#ftr-phone').click(function(){
		location.href="tel:1-866-873-2006";
	});

// PRODUCT LINKS

// Pro
	$('#tryPro').click(function(){
		location.href="/lp/trial?ace=Start%20Trial&acp1=CTA&acp1_v=Product%20Pro";
	});
	$('#buyPro').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7350,1";
	});
	$('#proLearn').click(function(){
		location.href="/products/act-pro";
	});
	$('#proCompare').click(function(){
		location.href="/products/";
	});
	
// Premium
	$('#tryPremium').click(function(){
		location.href="/lp/trial?ace=Start%20Trial&acp1=CTA&acp1_v=Product%20Premium";
	});
	$('#buyPremium').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7352,1";
	});
	$('#premiumLearn').click(function(){
		location.href="/products/act-premium";
	});
	$('#premiumCompare').click(function(){
		location.href="/products/";
	});
	
// Hosted
	$('#buyHosted').click(function(){
		location.href="https://www.act.com/products/act-premium-hosted";
	});
	$('#hostedLearn').click(function(){
		location.href="https://www.act.com/products/act-premium-hosted";
	});
	$('#hostedCompare').click(function(){
		location.href="/products/";
	});
	
// Cloud
	$('#tryCloud').click(function(){
		location.href="https://mycloud.act.com/signup/";
	});
	$('#buyCloud').click(function(){
		location.href="https://mycloud.act.com/#/account/billing";
	});
	$('#cloudLearn').click(function(){
		location.href="/products/act-cloud";
	});
	$('#cloudCompare').click(function(){
		location.href="/products/";
	});
	
// Pillars
	$('#pillarLearn').click(function(){
		location.href="/why-choose-act/";
	});	
	
// Upgraders
	$('#tryPro-u').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCU%20Hero&acp2=Product%20Source&acp2_v=Pro";
	});
	$('#buyPro-u').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7351,1";
	});
	$('#tryPremium-u').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCU%20Hero&acp2=Product%20Source&acp2_v=Premium";
	});
	$('#buyPremium-u').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7353,1";
	});
	$('#tryPro-u2').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCU%20Hero%20Mobile&acp2=Product%20Source&acp2_v=Pro";
	});
	$('#buyPro-u2').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7351,1";
	});
	$('#tryPremium-u2').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCU%20Hero%20Mobile&acp2=Product%20Source&acp2_v=Premium";
	});
	$('#buyPremium-u2').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7353,1";
	});
	$('#buyPremium-ftr-u').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7353,1";
	});

// Prospects
	$('#tryPro-p').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCP%20Hero&acp2=Product%20Source&acp2_v=Pro";
	});
	$('#buyPro-p').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7350,1";
	});
	$('#tryPremium-p').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCP%20Hero&acp2=Product%20Source&acp2_v=Premium";
	});
	$('#buyPremium-p').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7352,1";
	});
	$('#tryPro-p2').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCP%20Hero%20Mobile&acp2=Product%20Source&acp2_v=Pro";
	});
	$('#buyPro-p2').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7350,1";
	});
	$('#tryPremium-p2').click(function(){
		location.href="/lp/trial?ace=Initiated%20Trial&acp1=Trial%20Source%20Module&acp1_v=PPCP%20Hero%20Mobile&acp2=Product%20Source&acp2_v=Premium";
	});
	$('#buyPremium-p2').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7352,1";
	});
	$('#tryPro-compare').click(function(){
		location.href="/lp/trial";
	});
	$('#buyPro-compare').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7350,1";
	});
	$('#tryPremium-compare').click(function(){
		location.href="/lp/trial";
	});
	$('#buyPremium-compare').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7352,1";
	});
	$('#buyPremium-ftr-p').click(function(){
		location.href="http://store.act.com/app/site/backend/additemtocart.nl?c=3669565&buyid=multi&multi=7352,1";
	});
	
});