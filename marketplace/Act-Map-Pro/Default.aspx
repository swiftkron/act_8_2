<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/Site.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! @Map Pro | Act! Marketplace</title>
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
	$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8051&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
	$('#version').change(function(){
		var v = $('#version').val();
		//document.write(term);
		if (v == "v15"){
			$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8050&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
		}
		else if (v == "v16"){
			$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8049&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
		}
		else if (v == "v17"){
			$('#buybtn').attr('href', 'http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8051&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US');
		}
	});
});
</script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="breadcrumbs"><asp:SiteMapPath ID="SiteMapPath1" Runat="server"></asp:SiteMapPath></div>

                    <h1>Act! @Map Pro</h1>
                    <div class="addonBox right">
                      <img src="img/actmappro_160x160.png" class="img-responsive" alt="Act! @Map Pro by Tendenz BV" />
                      <h3 class="center"><strong>$110.00</strong> - <span class="orange">NEW!</span></h3>
                      <p class="smalltext"><strong>Select your version:</strong></p>
                      <select id="version" name="version">
                        <option value="v17">Act! v17</option>
                        <option value="v16">Act! v16</option>
                        <option value="v15">Act! 2013 (v15.x)</option>
                      </select>
                      <a id="buybtn" href="http://store.act.com/app/site/backend/intl/additemtocart.nl?buyid=8051&qty=1&selcurrency=1&selsubsidiary=7&selshopperlanguage=en_US" target="_blank"><button class="btn-md">Buy now</button></a>
                    </div>
                    
                    <p>Do you regularly have an appointment with a customer who is a good drive away from your office? With Act!@Map Pro you can see which Contacts are located in the same area as the current Contact. This way, you can easily combine multiple appointments. This is a feature only available in the Pro version.</p>
                    <p>Simply look up the Contact in Act!, and with one click you can see all Contacts in the same neighborhood, within a given range. These Contacts automatically replace the current lookup, so you can generate a route along them right away, because with Act!@Map Pro you also have all functionality of the standard Act!@Map. So the geographical locations of the Contacts are retrieved automatically from Act!. For each Contact you will see an icon on the map, so you can visualize your customer density.</p>
                    <p>You can also let Act!@Map automatically generate a route overview along a selection of Contacts. From your My Record the shortest / most practical route is calculated. Indications of traveling time and distance are also listed for convenience.</p>                   
                    <img src="img/actmappro_screenshot.gif" class="img-responsive" alt="Screenshot" style="margin:24px 0;" />
                    <p><strong>System Requirements</strong></p>
                    <ul>
                    	<li>Microsoft Windows XP or higher, Act! 2013 or higher</li>
                    	<li>5MB of free hard disk space</li>
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
