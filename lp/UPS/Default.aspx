<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/Home.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Buy Act! Essentials: Low Cost CRM Software Starting at $10/user/month</title>
  <meta name="description" content="You don't have to spend a fortune on CRM. Get Act! Cloud Essentials Contact & Customer Management Software for $10/user/month. Try it free for 30 days!">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
<link href="/css/buy.css" rel="stylesheet" />
<style type="text/css">
.portfolio{margin-top:-24px;}
.priceWrapper{width:200px;}
.licenseType{text-align:center;margin-top:12px;}

.partnerBanner{width:100%; background-color:#ffffff; margin:0 auto; padding:40px 0 40px 0;}
.partnerContent{max-width:728px; margin:0 auto;}
.hero {padding-top:0px !important;}
.UPSlogo {width:104px; height:120px; margin:0 30px 0 0; padding:0; background-image:url("/img/UPS-Store-Logo.png"); display:block; float:left;}
.partnerInfo {float:left;}
h2 { margin:0; }
@media(max-width:768px){
/*.licenseType{margin-top:-18px;}*/
.UPSlogo { float:none; margin:0 auto 20px auto;  }
.partnerInfo { text-align:center; margin:0 auto; width:100%;}
}
</style>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script src="/js/navEssentials.js"></script>
<script type="text/javascript">
$(document).ready(function() {
$('.navbar-left').css('display','none');
$('#intl-dropdown').css('display','none');
$('#navFreeTrial').html('<a href="https://mycloud.act.com/signup/?referralId="><button class="navTrial">Free trial</button></a>');
$('.login p').css('display','none');
});


</script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="essentials">

<!--#include virtual="/includes/act-essentials_login.aspx" -->



<!-- Partner Banner -->
<div class="partnerBanner">
	<div class="partnerContent">
    <a href="http://www.theupsstore.com/" target="_blank"><img src="img/UPSBanner.jpg" alt="UPS" class="img-responsive" /></a>
	</div>
</div>
<!-- END Partner Banner -->


<!-- HERO -->
<div class="hero">
	<div class="heroInner">
  	<h1>Get Act! Essentials Free for 90 Days</h1>
  	<p style="margin-bottom:0;">Consolidate and manage your contacts, activities, notes, and history in one organized place, accessible from anywhere. Easily create, send, and track professional email campaigns and know who to connect with next.</p>
  </div>
</div>

<!-- PORTFOLIO -->
<div class="portfolio">
	<div class="portfolioInner">
    <div class="piece">
      <div class="priceInfo">
      	<!--
        <div class="priceWrapper">
          <div class="dollar">$</div>
          <p id="premDesktopPrice" class="price">10<span class="usd"></span></p>
        </div>
        <p class="licenseType">/user/month</p>
        -->
        <a id="buyDesktop" href="https://mycloud.act.com/signup/?referralId=ups90" target="_blank"><button type="button" class="btn-md">Try it for free</button></a>
        <div class="priceDets">
          <p class="center"><strong>Includes:</strong></p>
          <ul>
          	<li>Web &amp; Mobile</li>
            <li>Email marketing (500 contacts + Call List)</li>
            <li>Automatic upgrades</li>
            <li><a href="/documents/Act_Essentials_Brief.pdf" target="_blank"> Product overview</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- TESTIMONIALS -->
<div class="testimonials">
	<div class="testimonialInner">
  	<div class="col-sm-3">
    	<img src="/img/testimonials/m-9.png" alt="PHOTO" class="img-responsive" />
    </div>
    <div class="col-sm-9 testimonial">
    	<p class="quote">Act! Essentials is so simple and so easy to use. I will gladly recommend it to anyone looking for a simple, mobile-friendly contact manager that includes a powerful email marketing engine.</p>
      <p class="byline">Robert S.</p>
    </div>
  </div>
</div>

</div>

	<div class="cta" style="background:#2A353D;">
  	<h2>Looking for Act! Premium?</h2>
    <a href="/buy/act-premium"><button class="btn-lg">Buy now</button></a>
	</div>

</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
    <p>Customer is a participant in the Swiftpage Customer Reference Program and may be eligible for participation-based incentives.</p>
  </div>
</div>
</asp:Content>

