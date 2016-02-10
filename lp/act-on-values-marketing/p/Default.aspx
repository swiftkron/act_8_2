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
		.heroForm h2{color:#2A353D;}
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
		.heroFormInner{padding-top:100px;}
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
              	<h2 class="text-center">Get Act! Premium Free for 14 Days</h2>
                <a href="https://buy.act.com/en-US/trial/product/ActPremium/plan/Month"><button class="btn-lg">Try Act! Free</button></a>
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
          	<h3>Want a closer look?</h3>
            <p>See Act! in action. Learn more about how Act! can help you grow your business.</p>
            <p><a href="http://now.act.com/Extranet/96340/forms.aspx?msgid=39bba7bf-41b4-4541-b88b-5b575df2353d&LinkID=CH00096340eR00000143AD" target="_blank">Register for demo</a></p>
          </div>
        	<div class="col-sm-4">
          	<h3>Be in the loop</h3>
            <p>See what’s new in the Act! blog, and join the conversation on Twitter and the <span class="nobr">Act! Community.</span></p>
            <p><a href="http://blog.act.com" target="_blank">Visit the blog</a></p>
          </div>
        	<div class="col-sm-4">
          	<h3>See what’s new</h3>
            <p>Discover the latest features and enhancements that <span class="nobr">Act! v17</span> has to offer.</p>
            <p><a href="http://www.act.com/products/upgrade/" target="_blank">Learn more</a></p>
          </div>
        </div>
        <!-- .end 3 col -->
                
        <!-- .end CONTENT -->

</asp:Content>
