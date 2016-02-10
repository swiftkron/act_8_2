<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/Site.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Email2Act! | Act! Marketplace</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
<style type="text/css">
.addonBox{
	overflow:hidden;
	max-width:280px;
	margin-left:48px;
}
.addonBox img{
	display:block;
	margin:0 auto;
}
.addonBox button{
	display:block;
	margin:24px auto;
}
</style>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script type="text/javascript">
$(document).ready(function(){
	// Preload Monthly Sub Data
	$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8023&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
	$('#version').change(function(){
		var v = $('#version').val();
		//document.write(term);
		if (v == "v15"){
			$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8021&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
		}
		else if (v == "v16"){
			$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8022&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
		}
		else if (v == "v17"){
			$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8023&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
		}
	});
});
</script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="breadcrumbs"><asp:SiteMapPath ID="SiteMapPath1" Runat="server"></asp:SiteMapPath></div>

                    <h1>Email2Act!</h1>
                    <div class="addonBox right">
                      <img src="img/email2act_160x160.png" class="img-responsive" alt="Email2Act! by Tendenz BV" />
                      <h3 class="center"><strong>$89.00</strong> - <span class="orange">NEW!</span></h3>
                      <p class="smalltext"><strong>Select your version:</strong></p>
                      <select id="version" name="version">
                        <option value="v17">Act! v17</option>
                        <option value="v16">Act! v16</option>
                        <option value="v15">Act! 2013 (v15.x)</option>
                      </select>
                      <a id="buybtn" href="http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8023&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US" target="_blank"><button class="btn-md">Buy now</button></a>
                    </div>
                    
                    <p>With the standard functionality of Act! you can only attach email messages to a Contact.</p>
                    <p>With Email2Act! you can also attach incoming and outgoing email messages to Companies, Groups and Opportunities.</p>
                    <p>If for example, you save your projects or orders as Opportunities in Act!, you can easily attach all related email correspondence to that project / order.</p>
                    <p>This is useful if you’d like to search an email message regarding a specific project / order.</p>
                    <p>You can either let Email2Act! automatically attach the email message to the corresponding Act! Contact, or manually attach to one or more Contacts, Companies, Groups and/or Opportunities.</p>
                    <p>Once an email message is attached, a confirmation pop-up window appears. You can even have incoming messages automatically attached to Contacts, without interaction.</p>                   
                    <img src="img/email2act_screenshot.gif" class="img-responsive" alt="Screenshot" style="margin:24px 0;" />
                    <p><strong>System Requirements</strong></p>
                    <ul>
                    	<li>Microsoft Windows XP or higher, Outlook 2010 or higher, Act! 2013 or higher</li>
                    	<li>50MB of free hard disk space</li>
                    	<li>Internet connection</li>
                    	<li>1.6Ghz processor or higher</li>
                    	<li>1GB memory or higher</li>
                    </ul>

</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
    <p>This estore is for U.S. and Canada only. All prices are in U.S. dollars.</p>
  </div>
</div>
</asp:Content>
