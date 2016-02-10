<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/LP.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! on Values: Marketing | Video</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
    <!-- style content -->
    <style type="text/css">
		/* hero + form */
		.hero{background:#2A353D;}
		.heroForm{background:#EFF1F3;}
		.heroFormInner{width:65%;}
		.heroForm h2{color:#2A353D;}
		.heroForm p{font-size:18px; color:#2A353D;line-height:1.2em;}
		.heroTextInner button{background:#FE5000;}
		.heroTextInner button:hover{background:#da4c1f;}
		input[type=submit]{background:#6598B8;}
		input[type=submit]:hover{background:#5c8ba8;}
		/* cta */
		.cta{background:#D2DDE4;}
		.cta h4{color:#2A353D;}
		.cta button{background:#FE5000;}
		.cta button:hover{background:#da4c1f;}
		.glyphicon-play{display:block;}
		@media(min-width:768px){
		.cta button{width:350px;}
		.glyphicon-play{display:inline;}
		}
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
                <h1>Act! on Values: Marketing</h1>
                <p>Have you ever delivered a great joke to the wrong audience? Your marketing can also fall flat. Watch this video to make your message — and punchline — resonate!</p>
                <a href="http://youtu.be/D8Nqcaz6GpI" target="_blank"><button type="button"><span class="halflings glyphicon-play"></span> <span class="btnText">Watch the Video</span></button></a>
              </div>
            </div>
            <!-- form -->
            <div class="heroForm">
              <div class="heroFormInner">
                <h2>Get Act! – Your Way</h2>
                <p>Act! now offers flexible pricing and deployment options. Subscribe to the latest version of Act! to stay up to date on the latest features and compatibility updates, get expert technical support, and more!</p>
                <p><a href="/upgrade/act-premium">See plans and pricing</a></p>
              </div>
            </div>
            <!-- .end form -->
          </div>
        </div>
        <!-- .end hero -->

				<!-- download banner -->
        <!--#include virtual="/widgets/infographic-1506-2-banner.html" -->
        
        <!-- 3 col -->
        <div class="colWrap">
        	<div class="col-sm-4">
          	<h3>Act! Marketplace</h3>
            <p>Extend the power and possibilities of what Act! can do for you.</p>
            <p><a href="http://www.act.com/marketplace/" target="_blank">Visit the marketplace</a></p>
          </div>
        	<div class="col-sm-4">
          	<h3>Be in the loop</h3>
            <p>See what’s new in the Act! blog, and join the conversation on Twitter and the Act! Community.</p>
            <p><a href="http://blog.act.com" target="_blank">Visit the blog</a></p>
          </div>
        	<div class="col-sm-4">
          	<h3>See what’s new</h3>
            <p>Discover the latest features and enhancements that Act! v17 has to offer.</p>
            <p><a href="http://www.act.com/products/upgrade/" target="_blank">Learn more</a></p>
          </div>
        </div>
        <!-- .end 3 col -->
        
        <!-- cta -->
        <div class="cta">
        	<div class="ctaInner">
            <h4>Need help getting started? Check out the following Act! feature tours:</h4>
            <a href="https://www.youtube.com/watch?v=VRl1fQxpe4c&feature=youtu.be" target="_blank"><button type="button"><span class="btnCenter"><span class="halflings glyphicon-play"></span> <span class="btnText">Importing Contacts</span></span></button></a>
            <a href="https://www.youtube.com/watch?v=nxciYQzz1BE&feature=youtu.be" target="_blank"><button type="button"><span class="btnCenter"><span class="halflings glyphicon-play"></span> <span class="btnText">Groups</span></span></button></a>
          </div>
        </div>
        <!-- .end cta -->
        
        <!-- .end CONTENT -->

</asp:Content>
