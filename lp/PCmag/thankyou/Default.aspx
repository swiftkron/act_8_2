<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/Confirm.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Contact Management & CRM Software - Free Trial | Act!</title>
  <meta name="description" content="Act! has been the #1 Best-Selling Contact & Customer Management Software for over 25 years. Try it free for 30 days!">
  <meta name="keywords" content="">
  <meta name="robots" content="noindex, nofollow">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
    <!-- style content -->
    <style type="text/css">
		.hero{
			padding:24px 0;
		}
		.formWrapper{
			overflow:hidden;
			margin-bottom:24px;
			padding:24px;
		}
		@media(min-width:992px){
		.formWrapper{
			max-width:1170px;
			margin:0 auto 60px;
		}
		}
		#dl, #on{display:none;}
    </style>
    <!-- .end style content -->
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
        
      <!-- Trial Display -->
      <script type="text/javascript">
$(document).ready(function() {
$('.navPhone').css('display','none');
$('#navFreeTrial').html('<a href="/trial/?elqsource=LCRMAA00020W"><button class="navTrial">Free trial</button></a>');

});

</script>

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <!-- CONTENT -->
        
        <!-- hero -->
        <div class="hero">
        </div>
        <!-- .end hero -->

        <div class="formWrapper">
          <!-- <h1>Check your inbox</h1>
          <p>A link to your Act! Premium trial has been sent to your email.</p>
          <p>Be sure to add <strong>act_team@e.act.com</strong> to your email address book or safe list, and check your junk folder.</p>
          <p>Also keep a lookout for emails on how to make the most of your trial experience.</p>
          <p>Thank you!</p> -->
          <h1>Thank you for your interest in Act!</h1>
          
          <div id="default">
          	<h2>An Act! Specialist will be contacting you soon.</h2>
          </div>
          
          <div id="dl">
            <a href="http://cdn.act.dlm.swiftpage.com/3884/act_prem_172x217_us_ca_la.exe" target="_blank"><button class="btn-lg"><span class="halflings glyphicon-download"></span> Download your trial</button></a>
            <h3>Questions on installation or setup?</h3>
            <p><a href="http://kb.swiftpage.com/app/answers/detail/a_id/36564" target="_blank">View online resources</a></p>
          </div>

          <div id="on">
            <h2><a href="http://www.runaware.com/clients/swiftpageus/?app=act" target="_blank">Click here</a> to start your Act! trial online.</h2>
          </div>
          
        </div><!-- .end formWrapper -->                        
        <!-- .end CONTENT -->

</asp:Content>
