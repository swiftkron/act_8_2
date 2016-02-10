<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/LP.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Prospects – Act! on Values: Insights Video | Useful Insights</title>
  <meta name="description" content="Improve your time management skills with these Top 10 Time Management Tips for business owners, and see how Act! can help you make the most of your time.">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
    <!-- style content -->
    <link href="/css/lp-time-mgmt.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .hero {background:#2a353d;}
        .heroForm{background:#dfe3e6;}
		.heroForm h2{font-family:'HelveticaNeueW01-65Medi',Helvetica,Arial,sans serif;color:#2a353d;}
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
               <p>Organizing, developing, and fostering relationships can be a tremendous undertaking. Get up-to-date performance metrics so you know what to do next. Watch this video to see how Act! can help you report, analyze, and make effective, data-driven decisions to capitalize on your opportunities.</p>
              </div>
                <!-- video -->
                <div class="video">
                  <div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/gjtZBKiXM6w?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe></div></div>
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
                
</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
  </div>
</div>
</asp:Content>
