<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/Site.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! Marketplace | Contact &amp; Customer Relationship Management Software</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script type="text/javascript">
		if ( (screen.width < 768) ) { 
			window.location = 'http://www.act.com/app-marketplace/';
		}		
</script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<iframe src="/app-marketplace" width="1000" scrolling="no" frameborder="0" height="940" style="width:1000px; margin:auto;"></iframe>

</asp:Content>
