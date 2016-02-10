<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/LP.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! on Values Insights | Video</title>
  <meta name="description" content="Improve your time management skills with these Top 10 Time Management Tips for business owners, and see how Act! can help you make the most of your time.">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
    <!-- style content -->
    <link href="/css/lp-time-mgmt.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
		/*.navbar-brand {background:url('/img/new_logos/act_essentials_logo.png') top left no-repeat;background-size:60px 60px;min-height:60px;min-width:60px;margin-top:12px;}
		@media(min-width:768px){
			.navbar-brand {background:url('/img/new_logos/act_essentials_logo.png') top left no-repeat;background-size:60px 60px;min-height:60px;min-width:60px;margin-top:12px;}
		}*?
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
		@media(min-width:1024px){
		.heroForm{padding-bottom:700px;}
		}
    </style>
    <!-- .end style content -->
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
	<script src="/js/trial.js" type="text/javascript"></script>
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
        document.forms["toptentips"].elements["elqCustomerGUID"].value = GetElqCustomerGUID();
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
        	<div class="heroInner">
            <div class="heroText">
            	<div class="heroTextInner">
               <h1>Act! on Values: Insights</h1>
               <p>Organizing, developing, and fostering relationships can be a tremendous undertaking. Get up-to-date performance metrics so you know what to do next. Watch this video to see how Act! Essentials can help you report, analyze, and make effective, data-driven decisions to capitalize on your opportunities.</p>
              </div>
                <!-- video -->
                <div class="video">
                  <div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/VEtjAxlJgTc?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe></div></div>
                </div>
            </div>
            <!-- form -->
            <div class="heroForm">
              <div class="heroFormInner">
                <h2>Try Act! Free</h2>
                <a href="https://mycloud.act.com/signup/"><button>Get started</button></a>
              </div>
            </div>
            <!-- .end form -->
          </div>
        </div>
        <!-- .end hero -->
                
</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
  </div>
</div>
</asp:Content>
