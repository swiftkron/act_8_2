
<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/HomeWoNav.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Upgrade to Act! Premium</title>
  <meta name="description" content="Act! Premium Contact & Customer Management Software starts at only $25/user/month. Try it free for 30 days!">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
<link href="/css/buy.css" rel="stylesheet" />
<link href="/css/upgrade.css" rel="stylesheet" />
<link href="/css/pricing-banners.css" rel="stylesheet" />
<link href="/css/landing.css" rel="stylesheet" />

    <style type="text/css">
        #thanks{display:none;}
        .btn-secondary{background:rgba(255,255,255,1);}
        .btn-secondary:hover{background:rgba(255,255,255,.9);}
				.portfolio h1{
					font-size:48px;
				}
				.portfolio p.intro{
					font-size:20px;
					line-height:1.42857;
				}
    </style>

</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script type="text/javascript" src="/js/act-premium_selection.js"></script>
<script src="/js/trial.js" type="text/javascript"></script>
    <script type="text/javascript">
        var thanks = getParameterByName('thanks');
        if (thanks == "y") {
            $('#heroMsg').css('display','none');
            $('#thanks').css('display', 'block');
        }
    </script>
</asp:Content>


<asp:content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!--Hero-->
<div class="hero">
		<div class="container">
			<div class="row">
				<div id="heroMsg" class="col-sm-6">
					<h1>Don&#39;t miss out!</h1>
					<h5>As an Act! v16 or Act! v17 customer, <strong>YOU</strong> are eligible for <strong>exclusive upgrade pricing</strong> on the latest version of Act! Experience innovative new features, compatibility updates, flexible new subscription plans, emarketing services, and more - <strong>you&#39;ll love the new Act!</strong>.</h5>
					<a href="#portfolio"><button class="btn-md">Plans &amp; Pricing</button></a> <a href="https://buy.act.com/en-US/trial/product/ActPremium/plan/Month"><button class="btn-md" style="margin-left:24px;">Start Free Trial</button></a> <a href="#contactUs"><button class="btn-md btn-secondary">Contact Us</button></a> 
				</div>
                <div id="thanks" class="col-sm-6">
                    <h1>Thank you for your inquiry.</h1>
                    <h5>An Act! representative will be in touch shortly.</h5>
                </div>
				<div class="col-sm-6 starting-at-circle">
					<img src="/img/starting-at-circle.png" alt="Plans starting at $19 USD" >
				</div>
			</div>
		</div>
	</div><!-- /hero -->

<!--Top 10 Slider-->

	<div class="top-10-reasons" id="topten">
		<div class="container">
			<h2>Top 10 Reasons to Upgrade</h2>
			<!-- Slider Goes Here -->
			
			
<div id="carousel-generic" class="carousel slide" data-ride="carousel" data-interval="false">
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
  
  
    <div class="item active">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>1</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Exclusive upgrade pricing</strong> for Act! v16 and Act! v17 users - save up to 24% for a limited time only!&sup1;<br /><br /><strong>You are eligible for exclusive upgrade pricing</strong> on the latest version of Act!.  Experience innovative new features and ensure compatibility with today&#39;s business applications.  With flexible new subscription plans, on-premises and Cloud deployment options, integrated emarketing services, and more - <strong>you&#39;ll love the new Act!</strong></p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>2</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Dozens of new features</strong> released since your version of Act! - Don&#39;t miss out!<br /><br />Innovative new features, integrated emarketing services, and connections with popular productivity tools help <strong>drive productivity, expand your reach, and increase sales</strong>.  You&#39;ll love the new History view, automation and customization options, integrations to Dropbox and SharePoint&trade;, and much more!</p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>3</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Hundreds of performance and usability improvements</strong> - Act! is better than ever!<br /><br />We&#39;re constantly improving and refining Act! to increase efficiency and enhance your user experience.  You&#39;ll benefit from <strong>hundreds of usability improvements and defect fixes</strong> since your version, driven by feedback from customers like you!</p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>4</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Flexible new subscription pricing</strong> - including monthly, annual, and permanent license options.<br /><br /><strong>Pay for Act! the way that works for you!</strong> Whether managed on-site or hosted in the Cloud, you can now subscribe to Act! monthly for maximum flexibility or annually for maximum savings. Permanent license options are also available.</p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>5</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Integrated Act! emarketing</strong> - extend your reach to help generate new business - Basic Act! emarketing account is included with your purchase of Act! at no extra cost!<br /><br />Easily design and send impactful email campaigns, intelligently analyze results, and automate key follow-up actions. With integrated Act! emarketing, you&#39;ll have the tools you need <strong>to reach new prospects, stay connected with your customers, and prioritize new opportunities.</strong></p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>6</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Support Obsolescence</strong> - support for Act! v16 officially ends 11/30/16 - don&#39;t put yourself at risk!<br /><br />Upgrade today and enjoy <strong>expert technical support included at no extra charge</strong> with Act! subscription plans for both on-premises and Cloud deployments.</p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>7</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>New Subscription plan benefits</strong> - product updates, technical support, emarketing, video tutorials, and more - all for one low price!<br /><br />All Act! subscriptions include <strong>feature and platform updates, expert technical support, Act! emarketing Basic accounts, and video tutorials.</strong> Act! Premium Cloud subscriptions add secure Cloud hosting, automatic installation, automatic upgrades, and nightly backups. Always have the latest Act! features, ensure compatibility with today&rsquo;s business applications, and gain peace of mind that you&#39;ve got help available when you need it.</p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>8</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Deployment flexibility</strong> - deploy and manage Act! on-premises or host it in the Cloud - the choice is yours!<br /><br />Have an IT department or a knack for technology? Or do you value the convenience and peace of mind of outsourcing technical work to experts? With Act!, the decision is yours whether to <strong>install and manage the software on-site, or leave it to us via a secure Cloud implementation.</strong></p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>9</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>System Compatibility</strong> - reduce risk and stay up-to-date - get automatic updates!<br /><br />All Act! subscription plans - for both on-premises and Cloud deployments - entitle you to the latest Act! software, an important way to <strong>reduce the risk of losing compatibility</strong> with popular business applications and platforms including Windows&reg;, Outlook&reg;, Google&trade;, and more. New Act! subscriptions plans help future-proof your systems and ensure business continuity.</p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    <div class="item">
		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-2">
				<div class="circle"><span>10</span></div>
			</div>
			<div class="col-sm-7">
				<p class="desc"><strong>Access to innovative future features and services</strong> included with your subscription - always have the latest and greatest!<br /><br />Act! subscriptions - for both on-premises and Cloud deployments - automatically entitle you to the latest <strong>Act! features and platform updates, new services and integrations, and continuous improvements</strong> based on customer feedback - as they&#39;re released!</p>
				<div class="row">
					<div class="col-sm-6 cta1">
						<a href="/whats-new" target="_blank">See what&#39;s new since your version</a>
					</div>
					<div class="col-sm-6 cta2">
						<a href="/documents/top_10_upgrade_longgeneric_final.pdf" target="_blank">Get the full Top 10 list</a>
					</div>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
    </div>
    
    
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
				
		</div>
	</div><!-- /top-10-reasons -->
   

<!-- PORTFOLIO -->
<div id="portfolio" class="anchor"></div>
<div class="portfolio">
<div class="container">
	<div class="portfolioInner">
  	<h1 class="center">Ready to Upgrade?</h1>
    <p class="center intro"><strong>Pay for Act! the way that works for you!</strong> Whether managed on-site or hosted in the Cloud, you can now subscribe to Act! monthly for maximum flexibility or annually for maximum savings. Permanent license options are also available.</p>
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
        <p class="upgradeCTA"><strong>To order, call <span class="orange">(866) 873-2006</span></strong></p>
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
    <p><span><a href="/products/system/v17/premium/"><span class="halflings glyphicon-sys"></span> System Requirements</a></p>
  </div>
</div>
</div>

<!--end portfolio-->


<div id="contactUs" class="anchor"></div>
<div class="form-container">
		<div class="container">
			<div class="row">
			<div class="col-xs-12">
				<p>Questions? Call us at (866) 873-2006, contact your <a href="http://acc.swiftpage.com/" target="_blank">Act! Certified Consultant</a>**, or fill out the form below to have a knowledgeable Act! representative get in touch with you.</p>
			</div>
			</div>

			<div class="row">
				<div elqid="" elqtype="" class="" elqformname="updgrade">
				<form id="free-trial" method="post" action="https://s1966950654.t.eloqua.com/e/f2">
					<div>
						<input type="hidden" name="LeadSource" value="LCRMAA00020Z">
                <!-- UTM -->
                	<input type="hidden" name="elq_utm_campaign" value="" />                                          
                	<input type="hidden" name="elq_utm_medium" value="" />                                          
                	<input type="hidden" name="elq_utm_source" value="" />                                          
                	<input type="hidden" name="elq_utm_term" value="" />                                          
						<input type="hidden" name="firstPage">
						<input type="hidden" name="referrer">
						<input type="hidden" name="elqCookieWrite" value="0">
						<input type="hidden" name="elqCustomerGUID" value="">
						<input type="hidden" name="elqFormName" value="Allupgrade">
						<input type="hidden" name="elqSiteID" value="1966950654">

						<div class="form-group col-md-2 col-md-offset-1">
							<input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name">
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name">
						</div>
						<div class="form-group col-md-2">
							<input type="tel" class="form-control" id="busPhone" name="busPhone" placeholder="Phone Number">
						</div>
						<div class="form-group col-md-2">
							<input type="text" class="form-control" id="company" name="company" placeholder="Company">
						</div>
						<div class="form-group col-md-2">
							<input type="email" class="form-control" id="emailAddress" name="emailAddress" placeholder="Email">
						</div>
					</div>
					<button type="submit" class="btn btn-default btn-cBlue">Submit</button>
				</form>
				
				</div>
				</div>


			</div>
		</div>
		</div>
	</div><!-- /form-container -->



</asp:content>


<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
    <p>*Price listed is per user, per month. Price may vary based on features chosen. All prices are in U.S. dollars.</p>
    <p>**Act! Certified Consultants are third-party vendors. Swiftpage and its affiliates are in no way liable or responsible for claims made related to the services provided by third-party vendors.</p>

    <!--#include virtual="/includes/important-note.aspx" -->
  </div>
</div>
</asp:Content>