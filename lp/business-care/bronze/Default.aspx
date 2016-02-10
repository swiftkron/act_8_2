<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/LP.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! | Business Care Bronze is Ending</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
    <!-- style content -->
    <style type="text/css">
		/* hero + form */
		.hero h1{color:#FE5000;}
		.hero h2{color:#2A353D;}
		.hero h3{font-family:'HelveticaNeueW01-65Medi',Helvetica,Arial,sans serif;color:#65727A;}
		.hero{background:#FFF;color:#65727A;}
		.heroForm h2{color:#FFF;text-align:center;}
		.heroForm h3, .heroForm p{color:#fff;text-align:center;}
		.heroForm{background:#2A353D;min-height:600px}
		.heroTextInner button{background:#FE5000;}
		.heroTextInner button:hover{background:#da4c1f;}
		input[type=submit]{background:#6598B8;}
		input[type=submit]:hover{background:#5c8ba8;}
		/* cta */
		.cta{background:#D2DDE4;color:#2A353D;}
		.cta h4{}
		.cta ul{max-width:200px;margin:12px auto 48px;text-align:left;}
		.cta button{background:#FE5000;}
		.cta button:hover{background:#da4c1f;}
		.glyphicon-play{display:block;}
		.disclaimer p{font-size:12px;line-height:14px;color:#EFF1F3;text-align:left;}
		@media(min-width:768px){
		.hero h1{font-size:44px;}
		.hero h2{font-size:30px;}
		.hero h3{font-size:24px;}
		.heroForm{min-height:700px}
		.cta button{width:350px;}
		.glyphicon-play{display:inline;}
		}
		.navPhone{font-size:24px;}
    </style>
    <!-- .end style content -->
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script type="text/javascript">
$(document).ready(function(){
		// Get URL Parameters
    function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
    results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    }
		//Parse URL Parameters and Record
		var thanks = getParameterByName('thanks');
		// Show thank you message
		if(thanks == "y"){
			$('.heroFormInner').html('<h2>Thank you. An Act! representative will contact you shortly.</h2><h3>Can&rsquo;t wait?</h3><p>Call us now <strong class="nobr">866-738-7707</strong></p>');
		}
});
</script>
<!-- Eloqua Tracking -->
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
        document.forms["bcrenewbronze"].elements["elqCustomerGUID"].value = GetElqCustomerGUID();
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
                <h1>Your Business Care Plan <span class="nobr">is ending</span></h1>
                <h2>Renew into a subscription plan with an exclusive offer for our loyal customers. Call us at <strong class="orange nobr">866-738-7707</strong>.</h2>
                <h3>Same great features:</h3>
                <ul>
                  <li>Automatic feature enhancements and platform updates, so you always have the latest and greatest</li>
                  <li>Act! emarketing (email up to 500 contacts at no additional charge)</li>
                  <li>Detailed video training and insightful tips to help you run your business more efficiently</li>
                  <li>Plus, as a former Business Care customer, you get to own Act! forever. Keep the latest version of Act! Premium if you ever choose to cancel, at no additional cost</li>
                </ul>
              </div>
            </div>
            <!-- form -->
            <div class="heroForm">
              <div class="heroFormInner">
                <h2>Limited time<span class="sup">&sup1;</span> offer for Legacy Business Care Bronze subscribers</h2>
                <h3>Renew now</h3>
                <form method="GET" action="https://s1966950654.t.eloqua.com/e/f2">
                	<input name="LeadSource" type="hidden" value="LCRMAA0001WI" />
                	<input name="elqFormName" type="hidden" value="bcrenewbronze" />
                	<input name="elqSiteID" type="hidden" value="1966950654" />
                	<input name="elqCustomerGUID" type="hidden" value="" />
                	<input name="elqCookieWrite" type="hidden" value="0" />
                  <input name="firstName" type="text" placeholder="First Name" />
                  <input name="lastName" type="text" placeholder="Last Name" />
                  <input name="busPhone" type="text" placeholder="Phone" />
                  <input name="emailAddress" type="text" placeholder="Email Address" />
                  <select name="stateProv" id="stateProv">
                    <option>Select State or Province</option>			
                    <option value="AK">Alaska</option>			
                    <option value="AL">Alabama</option>			
                    <option value="AR">Arkansas</option>			
                    <option value="AZ">Arizona</option>			
                    <option value="CA">California</option>			
                    <option value="CO">Colorado</option>			
                    <option value="CT">Connecticut</option>			
                    <option value="DC">D.C.</option>			
                    <option value="DE">Delaware</option>			
                    <option value="FL">Florida</option>			
                    <option value="GA">Georgia</option>			
                    <option value="HI">Hawaii</option>			
                    <option value="IA">Iowa</option>			
                    <option value="ID">Idaho</option>			
                    <option value="IL">Illinois</option>			
                    <option value="IN">Indiana</option>			
                    <option value="KS">Kansas</option>			
                    <option value="KY">Kentucky</option>			
                    <option value="LA">Louisiana</option>			
                    <option value="MA">Massachusetts</option>			
                    <option value="MD">Maryland</option>			
                    <option value="ME">Maine</option>			
                    <option value="MI">Michigan</option>			
                    <option value="MN">Minnesota</option>			
                    <option value="MO">Missouri</option>			
                    <option value="MS">Mississippi</option>			
                    <option value="MT">Montana</option>			
                    <option value="NC">North Carolina</option>			
                    <option value="ND">North Dakota</option>			
                    <option value="NE">Nebraska</option>			
                    <option value="NH">New Hampshire</option>			
                    <option value="NJ">New Jersey</option>			
                    <option value="NM">New Mexico</option>			
                    <option value="NV">Nevada</option>			
                    <option value="NY">New York</option>			
                    <option value="OH">Ohio</option>			
                    <option value="OK">Oklahoma</option>			
                    <option value="OR">Oregon</option>			
                    <option value="PA">Pennsylvania</option>			
                    <option value="RI">Rhode Island</option>			
                    <option value="SC">South Carolina</option>			
                    <option value="SD">South Dakota</option>			
                    <option value="TN">Tennessee</option>			
                    <option value="TX">Texas</option>			
                    <option value="UT">Utah</option>			
                    <option value="VA">Virginia</option>			
                    <option value="VI">Virgin Islands</option>			
                    <option value="VT">Vermont</option>			
                    <option value="WA">Washington</option>			
                    <option value="WI">Wisconsin</option>			
                    <option value="WV">West Virginia</option>			
                    <option value="WY">Wyoming</option>			
                    <option value="AB">Alberta</option>			
                    <option value="MB">Manitoba</option>			
                    <option value="BC">British Columbia</option>			
                    <option value="NB">New Brunswick</option>			
                    <option value="NL">Newfoundland and Labrador</option>			
                    <option value="NS">Nova Scotia</option>			
                    <option value="NT">Northwest Territories</option>			
                    <option value="ON">Ontario</option>			
                    <option value="PE">Prince Edward Island</option>			
                    <option value="QC">Quebec</option>			
                    <option value="SK">Saskatchewan</option>			
                    <option value="YT">Yukon Territory</option>			
                  </select>
                  <input type="submit" value="Get Started" />
                </form>
              </div>
            </div>
            <!-- .end form -->
          </div>
        </div>
        <!-- .end hero -->
                        
        <!-- .end CONTENT -->

</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
  	<p>&sup1; Exclusive offer available to current Business Care Bronze Customers for up to 30 days after Your Business Care renewal date.</p>
  </div>
</div>
</asp:Content>
