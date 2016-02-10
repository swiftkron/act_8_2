<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/LP.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! Premium Quick Start Guide | Contact &amp; Customer Relationship Management Software</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
<style type="text/css">
		/* hero + form */
		.hero{background:#2A353D;}
		.heroSide{background:#EFF1F3;color:#2A353D;}
		.heroSide h2{color:#2A353D;margin-top:24px;margin-bottom:6px;}
		.heroSideInner{text-align:center;}
		.heroText{padding:24px 12px 48px;}
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
		.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right, .carousel-control .icon-prev, .carousel-control .icon-next {
    width: 60px;
    height: 60px;
    margin-top: -45px;
    margin-left: -45px;
    font-size: 60px;
		color:#FE5000;
		}
		@media(min-width:768px){
		.heroSide h2{margin-top:48px;}
		.heroSideInner{width:75%;margin:0 auto;}
		.heroText{float:none; max-width:100%;}
		.cta button{width:350px;}
		.glyphicon-play{display:inline;}
		}
		.options{float:right;overflow:hidden;width:33%;margin:24px;margin-right:0;padding:36px;background:#34566B;color:#EFF1F3;font-size:18px;}
		.options p:last-child{margin-bottom:0;}
		.options a{color:#FBE53D;}
		.carousel-control.right{background:none;}
		.carousel-control.left{background:none;}
		p.status{color:#33A1AF;font-size:16px;margin-top:2em;}
		.step{overflow:hidden;max-width:1170px;margin:0 auto;}
		.step h3{font-size:38px;text-align:center;margin-bottom:24px;}
		.step iframe{margin:0 auto;}
		.stepDets{max-width:868px;margin:48px auto 0;overflow:hidden;}
		.stepDets img{display:none;}
		.stepDets p{text-align:left;margin-top:24px;}
		.stepDets ul{margin:0 0 0 1em; padding:0;}
		.step .youtubewrap{
			width:80%;
			max-width:853px;
			margin:0 auto;
		}
		.step .videoContainer{
			position:relative;
			padding-bottom:56.25%;
			padding-top:30px;
			height:0;
			overflow:hidden;
		}
		.step .videoContainer iframe, .step .videoContainer object, .step .videoContainer embed {
			position:absolute;
			top:0;
			left:0;
			width:100%;
			height:100%;
		}
		.step7Wrapper{
			margin:0 48px;
		}
		.bulletWrapper{
			overflow:hidden;
			max-width:800px;
			margin:0 auto;
		}
		.stepCta button{display:block;margin:48px auto;}
		.carousel{margin-top:36px;margin-bottom:96px;}
		.carousel-control{display:none;}
		.lp-video{width:80%;margin:0 auto 24px;}
		@media(min-width:768px){
		.carousel-control{display:inline-block;}
		.stepDets img{display:block;}
		}
</style>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<!-- carousel -->
<script type="text/javascript">
$(document).ready(function(){
	$('.carousel').carousel({
    interval: false
	}) 
});
</script>

<!-- step -->
	<script type="text/javascript">
		// Get URL Parameters
    function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
		//Parse URL Parameters and Record
		var step = getParameterByName('step');
		$(document).ready(function(){
			if (step == "2"){
				$('#step2').addClass('active');
				$('#stepCurrent').html('2');			
			}
			else if (step == "3"){
				$('#step3').addClass('active');			
				$('#stepCurrent').html('3');			
			}
			else if (step == "4"){
				$('#step4').addClass('active');			
				$('#stepCurrent').html('4');			
			}
			else if (step == "5"){
				$('#step5').addClass('active');			
				$('#stepCurrent').html('5');			
			}
			else if (step == "6"){
				$('#step6').addClass('active');			
				$('#stepCurrent').html('6');			
			}
			else if (step == "7"){
				$('#step7').addClass('active');			
				$('#stepCurrent').html('7');			
			}
			else{
				$('#step1').addClass('active');			
				$('#stepCurrent').html('1');			
			}
		});
  </script>

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <!-- CONTENT -->
        
        <!-- hero -->
        <div class="hero">
        	<div class="heroInner">
            <div class="heroText">
            	<div class="heroTextInner">
                <h1>Getting Started with Act! Premium Cloud</h1>
                <h2>View the short videos below to make the most of your trial.</h2>
                <h3>Ready to buy?</h3>
                <p><a href="https://buy.act.com">Buy now</a> by logging into your Act! user account or call us at <span class="orange">866-873-2006</span></p>
              </div>
            </div>
          </div>
        </div>
        <!-- .end hero -->
        
        <div id="steps-carousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
        
        <!-- step -->
        <div class="step item" id="step1">
          <h3>Step 1: <strong>Getting Started with Act! Premium Cloud</strong></h3>
          	<div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/AygNewe8bMY" frameborder="0" allowfullscreen></iframe></div></div>          
          <div class="stepDets">
            <div class="col-md-12">
              <p style="text-align:center;">Everything you need at your fingertips</p>
              <p style="text-align:center;"><a href="/support/getting-started/ ">View more Act! Premium resources</a></p>
            </div>
          </div>
        </div>        

        <!-- step -->
        <div class="step item" id="step2">
          <h3>Step 2: <strong>Manage Contacts and Groups</strong></h3>
          	<div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/Vg4rY0YXEqg" frameborder="0" allowfullscreen></iframe></div></div>          
          <div class="stepDets">
            <div class="col-md-12">
              <ul>
                <li><span>Keep contact info and associated notes, history, activities, documents, opportunities, and social media updates in one organized place</span></li>
                <li><span>Customize your contact layout with over 60+ fields</span></li>
                <li><span>See a full view of your interactions with a customer in a single view</span></li>
                <li><span>Easily organize contacts and prospects into Groups</span></li>
              </ul>
              <p><a href="/support/getting-started/ ">View more Act! Premium resources</a></p>
            </div>
          </div>
        </div>

        <!-- step -->
        <div class="step item" id="step3">
          <h3>Step 3: <strong>Schedule Activities</strong></h3>
          	<div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/dlSzE-jc7xo" frameborder="0" allowfullscreen></iframe></div></div>          
          <div class="stepDets">
            <div class="col-md-12">
              <ul>
                <li><span>Efficiently manage your calendar and track calls, meetings and to-dos - all tied to your contacts</span></li>
                <li><span>Set reminders so you never miss a beat</span></li>
                <li><span>Integrate with Outlook&reg; for a comprehensive schedule</span></li>
              </ul>
              <p><a href="/support/getting-started/ ">View more Act! Premium resources</a></p>
            </div>
          </div>
        </div>

        <!-- step -->
        <div class="step item" id="step4">
          <h3>Step 4: <strong>Send an Email Campaign</strong></h3>
          	<div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/XOHt9K8pAKc" frameborder="0" allowfullscreen></iframe></div></div>          
          <div class="stepDets">
            <div class="col-md-12">
              <ul>
                <li><span>Effectively reach your customers and prospects with powerful, easy-to-use emarketing tools</span></li>
                <li><span>Use the Contacts, Groups, and Lists you already manage in Act! to easily send targeted email campaigns</span></li>
                <li><span>Create professional, eye-catching email campaigns using our unparalleled drag-and-drop template editor</span></li>
                <li><span>Record results to Act history and view insightful, actionable metrics</span></li>
              </ul>
              <p><a href="/support/getting-started/ ">View more Act! Premium resources</a></p>
            </div>
          </div>
        </div>

        <!-- step -->
        <div class="step item" id="step5">
          <h3>Step 5: <strong>Automate with Smart Tasks</strong></h3>
          	<div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/8dGjBaYIjKg" frameborder="0" allowfullscreen></iframe></div></div>          
          <div class="stepDets">
            <div class="col-md-12">
              <ul>
                <li><span>Automate key follow-up activities based on dynamic criteria you define</span></li>
                <li><span>Options like:
                  <ul>
                    <li><span>Automatically send email campaigns</span></li>
                    <li><span>Schedule follow-up activities</span></li>
                    <li><span>Assign contacts to a new owner</span></li>
                  </ul></span></li>
                <li><span>&hellip;and more!</span></li>
              </ul>
              <p><a href="/support/getting-started/ ">View more Act! Premium resources</a></p>
            </div>
          </div>
        </div>

        <!-- step -->
        <div class="step item" id="step6">
          <h3>Step 6: <strong>Review your Dashboards</strong></h3>
          	<div class="youtubewrap"><div class="videoContainer"><iframe src="https://www.youtube.com/embed/VJQmNmeXJ1k" frameborder="0" allowfullscreen></iframe></div></div>          
          <div class="stepDets">
            <div class="col-md-12">
              <ul>
                <li><span>Get dynamic, up-to-date performance metrics</span></li>
                <li><span>Customizable so you can see excatly what's most important to you</span></li>
                <li><span>Visual and numerical representations available</span></li>
                <li><span>Take action right from the dashboard to save time</span></li>
              </ul>
              <p><a href="/support/getting-started/ ">View more Act! Premium resources</a></p>
            </div>
          </div>
        </div>

        <!-- step -->
        <div class="step item" id="step7">
          <h3>Step 7: <strong>Buy Act! Premium Cloud Today</strong></h3>
          <div class="step7Wrapper">
            <p>Act! has a solution that’s perfect for your business. The Act! suite of solutions works the way you work – with ultimate flexibility to meet all your payment, deployment, and access needs. And, with expert support, intelligent recommendations, and rich integrations with the business tools you rely on every day, Act! fits neatly into your business.</p>
            <div class="bulletWrapper">
              <div class="col-md-6">
                <ul>
                  <li>Contact &amp; Customer Management</li>
                  <li>Calendar &amp; Activity Management</li>
                  <li>Opportunity Management</li>
                  <li>Sales Process Automation</li>
                  <li>Notes &amp; History</li>
                  <li>Lookups &amp; Groups</li>
                </ul>
              </div>           
              <div class="col-md-6">
                <ul>
                  <li>Email Marketing &amp; Social Integration</li>
                  <li>Reporting &amp; Dashboards</li>
                  <li>Integration with Outlook&reg;, Google&trade;, Dropbox and more!</li>
                  <li>Mobility</li>
                  <li>Marketplace Apps</li>
                </ul>
              </div>
            </div>
            <div class="stepCta"><p class="text-center" style="margin-top:48px; margin-left:-24px;"><a href="https://buy.act.com">Buy Now</a> by logging into your Act! user account or call us at <span class="orange">866-873-2006</span>.</p></div>
          </div>          
        </div>
                  
        </div>
        
          <!-- Left and right controls -->
          <a class="left carousel-control" href="#steps-carousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#steps-carousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        
        <!-- .end CONTENT -->

</asp:Content>
