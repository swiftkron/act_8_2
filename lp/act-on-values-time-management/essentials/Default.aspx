<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/LP.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! on Values: Time Management | Video</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
    <!-- style content -->
    <style type="text/css">
		.navbar-brand {background:url('/lp/img/act-cloud.png') top left no-repeat;background-size:111px 20px;min-height:20px;min-width:111px;background-position:0 20px;}
		@media(min-width:768px){
			.navbar-brand {background:url('/lp/img/act-cloud.png') top left no-repeat;background-size:222px 39px;min-height:43px;min-width:222px;background-position:0 12px;}
		}
		/* hero + form */
		.hero{background:#33A1AF;}
		.heroForm{background:#EFF1F3;padding-top:40px;}
		@media(min-width:768px){
		.heroForm{padding-top:120px;}
		}
		.heroForm h2{color:#2A353D;text-align:center;}
		.heroTextInner button{background:#A8FBD6;color:#34566B;}
		.heroTextInner button:hover{background:#8cfac8;}
		input[type=submit], .heroForm button{background:#00B19F;}
		input[type=submit]:hover, .heroForm button:hover{background:#00a191;}
		@media(min-width:768px){
			.heroFormInner{width:65%;margin:0 auto;}
		}
		/* cta */
		.cta{background:#FFF;color:#34566B;}
		.cta h4{color:#2A353D;}
		.cta button{background:#00B19F;}
		.cta button:hover{background:#00a191;}
		.glyphicon-play{display:block;}
		@media(min-width:768px){
		.cta button{width:300px;}
		.glyphicon-play{display:inline;}
		}
		.navbar-right{display:none;}
    </style>
    <!-- .end style content -->
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <!-- CONTENT -->

        <!-- hero -->
        <div class="hero">
        	<div class="heroInner">
            <div class="heroText">
            	<div class="heroTextInner">
                <h1>Act! on Values: <span class="nobr">Time Management</span></h1>
                <p>Are you making the most of your time? Watch this video to see how Act! can help you maximize your time and work smarter to accomplish more.</p>
                <a href="https://youtu.be/U-pHonMXouU" target="_blank"><button type="button"><span class="halflings glyphicon-play"></span> <span class="btnText">Watch the Video</span></button></a>
              </div>
            </div>
            <!-- form -->
            <div class="heroForm">
              <div class="heroFormInner">
                <h2>Try Act! Cloud Essentials Free</h2>
                <a href="https://mycloud.act.com/signup/"><button>Get started</button></a>
              </div>
            </div>
            <!-- .end form -->
          </div>
        </div>
        <!-- .end hero -->

				<!-- download banner -->
        <!--#include virtual="/widgets/pdf-1506-1-banner.html" -->
                
        <!-- cta -->
        <div class="cta">
        	<div class="ctaInner">
            <h4>Have questions?</h4>
            <p>Visit the Act! Cloud Essentials Success Center for informative help resources, FAQs and learn from other small businesses in Community discussions.</p>
            <a href="https://actcloud1.zendesk.com/hc/en-us" target="_blank"><button type="button">Get answers</button></a>
          </div>
        </div>
        <!-- .end cta -->
        
        <!-- .end CONTENT -->

</asp:Content>
