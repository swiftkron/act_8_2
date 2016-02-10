<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/Products.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Contact Management & CRM Software for PC Magazine readers</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
  
  
  
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
    <!-- style content -->
    <link href="/css/trial.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
		h2{
			font-size:21px;
		}
		.moreCopy img{
			width:auto;
			padding:12px 0 24px 24px;
		}
    </style>
    <!-- .end style content -->
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
	<script src="/js/trial.js" type="text/javascript"></script> 
    <script type="text/javascript">
		$(document).ready(function() {
		$('.navPhone').css('display','none');
		$('#navFreeTrial').html('<a href="/trial/?elqsource=LCRMAA00020W"><button class="navTrial">Free trial</button></a>');
		
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
        document.forms["pcmag"].elements["elqCustomerGUID"].value = GetElqCustomerGUID();
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
   
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <!-- CONTENT -->
        
        <!-- hero -->
        <div class="hero">
        </div>
        <!-- .end hero -->

        <div class="formWrapper">
        <!-- Supporting Copy -->    
        <div class="moreCopy col-md-6">
        	<h1>Greetings PCMag readers!</h1>
          <img src="/img/lps/PCMagLogo_nolines_2013.png" style="width:auto;" class="right" />
          <h2>Welcome to Act!, the #1 Best-Selling Customer and Contact Manager</h2>
					<p>Act! Premium helps organize all your prospect and customer details in one place so you can prioritize your day and market your products and services more effectively, helping to drive sales results while creating customers for life.</p>

					<!--#include virtual="/widgets/act_video1.html" -->

          <h3>Affordablity, Flexibility and Variety</h3>
          <p>Act! has a solution that’s perfect for your business. The Act! suite of solutions works the way you work by providing:</p>
          <ul>
          	<li>Expert support</li>
          	<li>Intelligent recommendations</li>
          	<li>Rich integrations with the business tools you rely on every day</li>
          	<li>Ultimate flexibility to meet all of your payment, deployment, and access needs</li>
          </ul>
        </div>

            <!-- form -->
            <div class="trialForm col-md-6">
              <div class="trialFormInner">
                <h1>Need to talk to an Act! Specialist?</h1>
                <p>Fill out the information below and an Act! expert will call to answer all of your questions.</p>
                
                <form name="trialForm" action="https://s1966950654.t.eloqua.com/e/f2" method="POST" id="free-trial">
                <input type="hidden" name="elqFormName" value="pcmag">
                <input type="hidden" name="elqSiteID" value="1966950654">
                <input type="hidden" name="LeadSource" value="LCRMAA000216" />
                <input type="hidden" name="hiddenCampaignId" value="" />
                <input type="hidden" name="elqCustomerGUID" value="">
                <input type="hidden" name="elqCookieWrite" value="0">
                <!-- UTM -->
                <input type="hidden" name="utm_source" value="">
                <input type="hidden" name="utm_medium" value="">
                <input type="hidden" name="utm_content" value="">
                <input type="hidden" name="utm_campaign" value="">
                <input type="hidden" name="utm_name" value="">
                <input type="hidden" name="utm_term" value="">
                            
                <input type="text" name="firstName" id="firstName" placeholder="First Name" value="" />
                <input type="text" name="lastName" id="lastName" placeholder="Last Name" value="" />
                <input type="text" name="company" id="company" placeholder="Company" class="optional" />
                <input type="email" name="emailAddress" id="emailAddress" placeholder="Email Address" value="" />
                <input type="tel" name="busPhone" id="busPhone" placeholder="Phone Number" />
                
                
                   
                    
                                    
                  
                  
                  
                            
                  <p id="error">There were errors on the form, please make sure all fields are fill out correctly.</p>
            
                  <!-- <div id="dlBanner">
                    <p>The downloadable trial is not recommended for <em>existing</em> Act! users. This option requires installation of Act! software. Technical support is not provided. For more information on system requirements, <a href="/products/system/v17/premium/" target="_blank">click here</a>.</p>
                  </div> -->

                  <!--<div id="dl-banner">
                    <p><span id="dl-isuser">The downloadable trial is not recommended for <em>existing</em> Act! users.</span> This option requires installation of Act! software. Technical support is not provided. For more information on system requirements, <a href="/products/system/v17/premium/" target="_blank">click here</a>.</p>
                  </div>-->
                        
                  <input class="submit" type="submit" name="submit" value="Submit" />
                                          
                </form>
      
              </div>
            </div>
            <!-- .end form -->
        
        </div><!-- .end formWrapper -->                        
        <!-- .end CONTENT -->

<!-- TESTIMONIALS -->
<div class="testimonials">
	<div class="testimonialInner">
  	<div class="col-sm-3">
    	<img src="/img/testimonials/f-7.png" alt="PHOTO" class="img-responsive" />
    </div>
    <div class="col-sm-9 testimonial">
    	<p class="quote">We use Act! for everything. Having client history and valuable information at your fingertips is great! Act! has made keeping track of customers much easier.</p>
      <p class="byline">Janet S.</p>
      <p><a href="/customer-successes/" class="textlink">More customer testimonials</a></p>
    </div>
  </div>
</div>

</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
    <p>Customer is a participant in the Swiftpage Customer Reference Program and may be eligible for participation-based incentives.</p>
  </div>
</div>
</asp:Content>
