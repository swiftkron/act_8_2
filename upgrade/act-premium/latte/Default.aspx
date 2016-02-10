<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/HomeWoNav.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Upgrade to Act! Premium</title>
  <meta name="description" content="Act! Premium Contact & Customer Management Software starts at only $25/user/month".
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
<link href="/css/buy.css" rel="stylesheet" />
<link href="/css/upgrade.css" rel="stylesheet" />
<link href="/css/pricing-banners.css" rel="stylesheet" />
<style type="text/css">
.hero{
	background:#308dc6;
}
.heroBanner{
	background:#2A353D url('/img/hero-coffee.jpg') top left no-repeat;
	background-size:cover;
}
.heroBanner h2{color:#FFF;}
.heroInner, .heroInnerCta{background:#308dc6;color:#FFF;}
.heroInner{padding-bottom:40px;}
.heroInnerCta p{color:#FFF;}
.heroInnerCta h2{color:#FFF;font-size:48px;}
.heroInner strong, .heroInner a{color:#f0f6fa;}
.heroInner a{text-decoration:underline;}
.heroInner a:hover{text-decoration:none;color:#FFF;}
#portfolio{padding-top:60px;}
#portfolio h3{color:#2a353d;}
.btn-secondary{background:transparent;border:#FFF 2px solid;color:#FFF;}
.btn-secondary:hover{background:rgba(255,255,255,.1)}
@media(min-width:768px){
.heroInnerCta p{font-size:24px;}
.heroBanner{
	background-position:0 -200px;
	text-align:center;
}	
}
@media(min-width:1515px){
.heroBanner{
	background-position:0 -675px;
	text-align:center;
}
}
</style>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script type="text/javascript" src="/js/act-premium_selection.js"></script>
  <script type="text/javascript">
		$(document).ready(function(){
			$('.navPhone').html('<a href="tel:877-798-0781">Call today! 877-798-0781</a>');
		});
  </script>
<script type='text/javascript'><!--//
var timerId = null, timeout = 5;
//--></script>
<script type='text/javascript'><!--//
function WaitUntilCustomerGUIDIsRetrieved() {
if (!!(timerId)) {
    if (timeout == 0) {
return;
}
if (typeof this.GetElqCustomerGUID === 'function') {
        document.forms["upgraderequest"].elements["elqCustomerGUID"].value = GetElqCustomerGUID();
return;
}
timeout -= 1;
}
timerId = setTimeout("WaitUntilCustomerGUIDIsRetrieved()", 500);
return;
}
window.onload = WaitUntilCustomerGUIDIsRetrieved;
_elqQ.push(['elqGetCustomerGUID']);
//--></script>

    <script type="text/javascript">
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
		</script>
    
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<div class="hero">
  <div class="heroBanner">
  	<div class="heroBannerInner">
  		<h1>Thank you</h1>
    	<h2>An email will be sent with a link to your Starbucks Card eGift* within 2-business days.</h2>
    </div>
  </div>
	<div class="heroInner">
    <div class="heroInnerCta">
    	<h2>Did you know&hellip;</h2>
      <p>As an Act! 2013 (v15.x) customer, <strong>YOU</strong> are eligible for <strong>exclusive upgrade pricing</strong> on the latest version of Act! Experience innovative new features, compatibility updates, flexible new subscription plans, emarketing services, and more – <strong>you’ll love the new Act!</strong>.</p>
      <!-- <p>As a loyal Act! v15-v17 user, you are eligible for exclusive preferred pricing! See pricing options below.</p> -->
      <p><strong>Ready to upgrade?</strong> Call <strong class="orange">(877) 798-0781</strong> or contact your Act! Certified Consultant.**</p>
    </div>
    <div style="overflow:hidden;max-width:800px;margin:0 auto;">
    <div class="col-md-6">
    	<a href="#portfolio"><button class="btn-md">Plans &amp; Pricing</button></a>
    </div>
    <div class="col-md-6">
    	<a href="/documents/top-10-reasons-to-upgrade.pdf" target="_blank"><button class="btn-md btn-secondary">Read <strong><em>Top 10 Reasons to Upgrade</em></strong></button></a>
    </div>
    </div>
  </div>
</div>

<!-- PORTFOLIO -->
<div class="portfolio" id="portfolio">
	<div class="portfolioInner">
  	<h1 class="center">Ready to Upgrade?</h1>
    <p class="center"><strong>Pay for Act! the way that works for you!</strong> Whether managed on-site or hosted in the Cloud, you can now subscribe to Act! monthly for maximum flexibility or annually for maximum savings. Permanent license options are also available.</p>
    <div id="actPremiumCloud" class="piece col-md-6">
    	<div class="priceOverview">
        <h2 class="center">Act! Premium</h2>
      </div>
      <div class="priceInfo">
       	<h3>Managed by you &mdash;<br/>for maximum control!</h3>
        <p class="priceStrike"><span>$25/user/mo</span></p>
      	<div class="priceWrapper">
          <div class="dollar">$</div>
          <p id="premDesktopPriceU" class="price">19<span class="usd"> /user/month</span></p>
        </div>
        <select id="premDesktopTerm" name="premDesktopTerm">
          <option value="pMonth">billed monthly</option>
          <option value="pAnnual">billed annually</option>
          <option value="pLicense">license + 1 year annual subscription</option>
        </select>
        <p class="upgradeCTA"><strong>To order, call <span class="orange">(877) 798-0781</span></strong></p>
        <p class="center"><a href="https://buy.act.com/en-US/trial/product/ActPremium/plan/Month">Take a test drive</a></p>
        <div class="priceDets">
          <p class="center"><strong>Includes:</strong></p>
          <ul>
          	<li>Windows&reg;, Web, &amp; Mobile</li>
            <li>Email marketing (500 contacts)</li>
            <li>Expert technical support</li>
            <li>Video training</li>
            <li>New features and compatibility updates</li>
            <li><a href="/documents/Act_Premium_Brief.pdf" target="_blank"> Product overview</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div id="actPremiumCloud" class="piece col-md-6">
    	<div class="priceOverview">
        <h2 class="center">Act! Premium Cloud</h2>
      </div>
      <div class="priceInfo">
      	<h3>Hosted by us &mdash;<br/>no IT required!</h3>
        <p>&nbsp;</p>
      	<div class="priceWrapper">
          <div class="dollar">$</div>
          <p id="premHostedPrice" class="price">35<span class="usd"> /user/month</span></p>
        </div>
        <select id="premHostedTerm" name="premHostedTerm">
          <option value="hAnnual">billed annually</option>
          <option value="hMonth">billed monthly</option>
        </select>
        <div class="pay">
        	Today you'll pay: <span id="payCloud"></span>
        </div>
        <a id="buyHosted" href=""><button type="button" class="btn-md">Upgrade now</button></a>
        <p class="center"><a href="https://buy.act.com/en-US/trial/product/ActPremium/plan/Month">Take a test drive</a></p>
        <div class="priceDets">
          <p class="center"><strong>Includes:</strong></p>
          <p class="center" style="margin-top:0;">All Act! Premium benefits, plus:</p>
          <ul>
          	<li><strong>Instant online access to Act!</strong></li>
            <li><strong>Secure cloud hosting service</strong></li>
            <li><strong>Automatic upgrades</strong></li>
            <li><strong>Nightly backups</strong></li>
            <li><a href="/documents/Act_Premium_Cloud_Brief.pdf" target="_blank"> Product overview</a></li>
          </ul>
          <p class="center">If your version of Act! is not currently hosted by Swiftpage, get tips on migration <a href="/documents/Act_Premium_Cloud_Migration_Tips.pdf" target="_blank">here</a>.</p>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="addInfo">
	<div class="addInfoInner">
    <!-- <p><a href="http://act.com/media/en-us/docs/briefs/Act!-v17-Release-Enhancements.pdf" target="_blank">See what’s new in Act! since your version!</a></p> -->
    <p><span><a href="/products/system/v17/premium/"><span class="halflings glyphicon-sys"></span> System Requirements</a></p>
  </div>
</div>

<!-- TESTIMONIALS -->
<div class="testimonials">
	<div class="testimonialInner">
  	<div class="col-sm-3">
    	<img src="/img/testimonials/m-8.png" alt="PHOTO" class="img-responsive" />
    </div>
    <div class="col-sm-9 testimonial">
    	<p class="quote">Our customers expect great things from us, and Act! helps ensure we remain responsive to their needs.</p>
      <p class="byline">Lee S.</p>
      <p><a href="/customer-successes/" class="textlink">More customer testimonials</a></p>
    </div>
  </div>
</div>


</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
    <p>Customer is a participant in the Swiftpage Customer Reference Program and may be eligible for participation-based incentives.</p>
    <p>*Complimentary latte offer valid for first 500 customers who redeem. The Starbucks word mark and the Starbucks Logo are trademarks of Starbucks Corporation. Starbucks is also the owner of the Copyrights in the Starbucks Logo and the Starbucks Card designs. All rights reserved. Starbucks is not a participating partner or sponsor in this offer.</p>
    <p>**Act! Certified Consultants are third-party vendors. Swiftpage and its affiliates are in no way liable or responsible for claims made related to the services provided by third-party vendors.</p>
    <!--#include virtual="/includes/important-note.aspx" -->
  </div>
</div>
</asp:Content>
