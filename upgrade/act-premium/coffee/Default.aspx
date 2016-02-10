<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/HomeWoNav.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Buy Act! Premium Sales & CRM Software Starting at $25/user/month</title>
  <meta name="description" content="Act! Premium Contact & Customer Management Software starts at only $25/user/month.">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
<link href="/css/buy.css" rel="stylesheet" />
<link href="/css/upgrade.css" rel="stylesheet" />
<link href="/css/pricing-banners.css" rel="stylesheet" />
<style type="text/css">
.heroBanner{
	background:#2A353D url('/img/hero-coffee.jpg') top left no-repeat;
	background-size:cover;
}
@media(min-width:768px){
.heroBanner{
	background-position:0 -200px;
	text-align:center;
}	
}
@media(min-width:1515px){
.heroBanner{
	background-position:0 -675px;
	text-align:center;
}
}
</style>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script type="text/javascript" src="/js/act-premium_selection.js"></script>
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
        document.forms["upgraderequest"].elements["elqCustomerGUID"].value = GetElqCustomerGUID();
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

    <script type="text/javascript">
		function countryOptin(thisForm)
			{
				var x = document.getElementById('country').value;
				if (
				(x == "Canada") ||
				(x == "Germany") ||
				(x == "Australia")
				){
					document.getElementById('reqOptIn').style.display="block";
					document.getElementById('stateProv').style.display="block";
				}
				else{
					document.getElementById('reqOptIn').style.display="none";
					document.getElementById('stateProv').style.display="none";
				}
				if (
				(x == "Canada")
				){
					document.getElementById('stateProv').style.display="block";
				}
				else{
					document.getElementById('stateProv').style.display="none";
				}
			}		
		</script>
    
    <!-- thank you -->
    <script type="text/javascript">
$(document).ready(function(){
		//Parse URL Parameters and Record
		var thanks = getParameterByName('thanks');
		// Show thank you message
		if(thanks == "y"){
			$('.thanksMsg').css('display','block');
		}
});
</script>

</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<div class="hero">
	<div class="thanksMsg">
  	<p>Thank you! Your request has been received. An Act! representative will be in touch shortly.</p>
  </div>
  <div class="heroBanner">
  	<div class="heroBannerInner">
  		<h1>Act! Premium delivered your way</h1>
    	<h2>Energize your business with Act!.</h2>
    </div>
  </div>
	<div class="heroInner">
    <div class="heroInnerCta">
      <p>As a loyal Act! v16 or v17 user, you are eligible for exclusive preferred pricing! See pricing options below.</p>
      <p><strong>Ready to upgrade?</strong> Call <strong class="orange">(866) 873-2006</strong>, contact your Act! Certified Consultant* or <a href="#" data-toggle="modal" data-target=".modal">contact us</a>.</p>
    </div>
    <p><a href="http://act.com/media/en-us/docs/briefs/Act!-v17-Release-Enhancements.pdf" target="_blank">See what&rsquo;s new in Act! since your version!</a></p>
  </div>
</div>

<!-- Modal Form -->
<div class="modal">
	<div class="modal-dialog">
		<div class="modal-content">
    	<h3>Contact us</h3>
			<form action="https://s1966950654.t.eloqua.com/e/f2" method="POST">
                <input type="hidden" name="elqFormName" value="upgraderequest">
                <input type="hidden" name="elqSiteID" value="1966950654">
                <input type="hidden" name="LeadSource" value="LCRMAA0001R6" />
                <input type="hidden" name="elqCustomerGUID" value="">
                <input type="hidden" name="elqCookieWrite" value="0">
                <!-- UTM -->
                <input type="hidden" name="utm_source" value="">
                <input type="hidden" name="utm_medium" value="">
                <input type="hidden" name="utm_content" value="">
                <input type="hidden" name="utm_campaign" value="">
                <input type="hidden" name="utm_name" value="">
                <input type="hidden" name="utm_term" value="">
                            
                <input type="text" name="firstName" id="firstName" placeholder="First Name" value="" />
                <input type="text" name="lastName" id="lastName" placeholder="Last Name" value="" />
                <input type="text" name="company" id="company" placeholder="Company" class="optional" />
                <input type="email" name="emailAddress" id="emailAddress" placeholder="Email Address" value="" />
                <input type="tel" name="busPhone" id="busPhone" placeholder="Phone Number" />
                
                <label>Country</label>
                    <select id="country" name="country" onChange="countryOptin(this.form);">
                      <option value="United States">United States</option>
                      <option value="Australia">Australia</option>
                      <option value="Canada">Canada</option>
                      <option value="France">France</option>
                      <option value="Germany">Germany</option>
                      <option value="New Zealand">New Zealand</option>
                      <option value="United Kingdom">United Kingdom</option>
                      <option>------------------</option>
                      <option value="Afghanistan">Afghanistan</option>
                      <option value="Aland Islands">Aland Islands</option>
                      <option value="American Samoa">American Samoa</option>
                      <option value="Albania">Albania</option>
                      <option value="Algeria">Algeria</option>
                      <option value="Amer.Virgin Is.">Amer.Virgin Is.</option>
                      <option value="Andorra">Andorra</option>
                      <option value="Angola">Angola</option>
                      <option value="Anguilla">Anguilla</option>
                      <option value="Antarctica">Antarctica</option>
                      <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                      <option value="Argentina">Argentina</option>
                      <option value="Armenia">Armenia</option>
                      <option value="Aruba">Aruba</option>            
                      <option value="Austria">Austria</option>
                      <option value="Azerbaijan">Azerbaijan</option>
                      <option value="Bahamas">Bahamas</option>
                      <option value="Bahrain">Bahrain</option>
                      <option value="Bangladesh">Bangladesh</option>
                      <option value="Barbados">Barbados</option>
                      <option value="Belarus">Belarus</option>
                      <option value="Belgium">Belgium</option>
                      <option value="Belize">Belize</option>
                      <option value="Benin">Benin</option>
                      <option value="Bermuda">Bermuda</option>
                      <option value="Bhutan">Bhutan</option>
                      <option value="Bolivia">Bolivia</option>
                      <option value="Bosnia and Herzegovinia">Bosnia and Herzegovinia</option>
                      <option value="Botswana">Botswana</option>
                      <option value="Bouvet Islands">Bouvet Islands</option>
                      <option value="Brazil">Brazil</option>
                      <option value="Brit/Indian Ocean Terr.">Brit/Indian Ocean Terr.</option>
                      <option value="Brit.Virgin Is.">Brit.Virgin Is.</option>
                      <option value="Brunei Darussalam">Brunei Darussalam</option>
                      <option value="Bulgaria">Bulgaria</option>
                      <option value="Burkina Faso">Burkina Faso</option>
                      <option value="Burundi">Burundi</option>
                      <option value="Cambodia">Cambodia</option>
                      <option value="Cameroon">Cameroon</option>
                      <option value="Cape Verde">Cape Verde</option>
                      <option value="Central African Republic">Central African Republic</option>
                      <option value="Cayman Islands">Cayman Islands</option>
                      <option value="Chad">Chad</option>
                      <option value="Chile">Chile</option>
                      <option value="China">China</option>
                      <option value="Christmas Island">Christmas Island</option>
                      <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                      <option value="Colombia">Colombia</option>
                      <option value="Comoros">Comoros</option>
                      <option value="Congo">Congo</option>
                      <option value="Congo, The Dem. Republic Of">Congo, The Dem. Republic Of</option>
                      <option value="Cook Islands">Cook Islands</option>
                      <option value="Costa Rica">Costa Rica</option>
                      <option value="Cote d'Ivoire">Cote d'Ivoire</option>
                      <option value="Croatia">Croatia</option>
                      <option value="Cuba">Cuba</option>
                      <option value="Cyprus">Cyprus</option>
                      <option value="Czech Republic">Czech Republic</option>
                      <option value="Denmark">Denmark</option>
                      <option value="Djibouti">Djibouti</option>
                      <option value="Dominica">Dominica</option>
                      <option value="Dominican Republic">Dominican Republic</option>
                      <option value="Ecuador">Ecuador</option>
                      <option value="Egypt">Egypt</option>
                      <option value="El Salvador">El Salvador</option>
                      <option value="Equatorial Guinea">Equatorial Guinea</option>
                      <option value="Eritrea">Eritrea</option>
                      <option value="Estonia">Estonia</option>
                      <option value="Ethiopia">Ethiopia</option>
                      <option value="Falkland Islands">Falkland Islands</option>
                      <option value="Faroe Islands">Faroe Islands</option>
                      <option value="Fiji">Fiji</option>
                      <option value="Finland">Finland</option>
                      <option value="French Polynesia">French Polynesia</option>
                      <option value="French Guiana">French Guiana</option>
                      <option value="French Southern Terr.">French Southern Terr.</option>
                      <option value="Gabon">Gabon</option>
                      <option value="Gambia">Gambia</option>
                      <option value="Ghana">Ghana</option>
                      <option value="Gibraltar">Gibraltar</option>
                      <option value="Greece">Greece</option>
                      <option value="Greenland">Greenland</option>
                      <option value="Grenada">Grenada</option>
                      <option value="Guadeloupe">Guadeloupe</option>
                      <option value="Guam">Guam</option>
                      <option value="Guatemala">Guatemala</option>
                      <option value="Guinea">Guinea</option>
                      <option value="Guinea-Bissau">Guinea-Bissau</option>
                      <option value="Guyana">Guyana</option>
                      <option value="Haiti">Haiti</option>
                      <option value="Heard/McDon Isls.">Heard/McDon Isls.</option>
                      <option value="Honduras">Honduras</option>
                      <option value="Hong Kong">Hong Kong</option>
                      <option value="Hungary">Hungary</option>
                      <option value="Iceland">Iceland</option>
                      <option value="India">India</option>
                      <option value="Indonesia">Indonesia</option>
                      <option value="Iran">Iran</option>
                      <option value="Iraq">Iraq</option>
                      <option value="Ireland">Ireland</option>
                      <option value="Israel">Israel</option>
                      <option value="Italy">Italy</option>
                      <option value="Jamaica">Jamaica</option>
                      <option value="Japan">Japan</option>
                      <option value="Jordan">Jordan</option>
                      <option value="Kazakhstan">Kazakhstan</option>
                      <option value="Kenya">Kenya</option>
                      <option value="Kiribati">Kiribati</option>
                      <option value="Korea, North">Korea, North</option>
                      <option value="Korea, South">Korea, South</option>
                      <option value="Kuwait">Kuwait</option>
                      <option value="Kyrgyzstan">Kyrgyzstan</option>
                      <option value="Laos">Laos</option>
                      <option value="Latvia">Latvia</option>
                      <option value="Lebanon">Lebanon</option>
                      <option value="Lesotho">Lesotho</option>
                      <option value="Liberia">Liberia</option>
                      <option value="Libya">Libya</option>
                      <option value="Liechtenstein">Liechtenstein</option>
                      <option value="Lithuania">Lithuania</option>
                      <option value="Luxembourg">Luxembourg</option>
                      <option value="Macau">Macau</option>
                      <option value="Macedonia">Macedonia</option>
                      <option value="Madagascar">Madagascar</option>
                      <option value="Malawi">Malawi</option>
                      <option value="Malaysia">Malaysia</option>
                      <option value="Maldives">Maldives</option>
                      <option value="Mali">Mali</option>
                      <option value="Malta">Malta</option>
                      <option value="Marshall Islands">Marshall Islands</option>
                      <option value="Martinique">Martinique</option>
                      <option value="Mauritania">Mauritania</option>
                      <option value="Mauritius">Mauritius</option>
                      <option value="Mayotte">Mayotte</option>
                      <option value="Mexico">Mexico</option>
                      <option value="Micronesia">Micronesia</option>
                      <option value="Moldova">Moldova</option>
                      <option value="Monaco">Monaco</option>
                      <option value="Mongolia">Mongolia</option>
                      <option value="Montserrat">Montserrat</option>
                      <option value="Morocco">Morocco</option>
                      <option value="Mozambique">Mozambique</option>
                      <option value="Myanmar">Myanmar</option>
                      <option value="N. Mariana Isls">N. Mariana Isls</option>
                      <option value="Namibia">Namibia</option>
                      <option value="Nauru">Nauru</option>
                      <option value="Nepal">Nepal</option>
                      <option value="Netherlands">Netherlands</option>
                      <option value="Netherlands Antilles">Netherlands Antilles</option>
                      <option value="New Caledonia">New Caledonia</option>
                      <option value="Nicaragua">Nicaragua</option>
                      <option value="Niger">Niger</option>
                      <option value="Nigeria">Nigeria</option>
                      <option value="Niue">Niue</option>
                      <option value="Norfolk Island">Norfolk Island</option>
                      <option value="Norway">Norway</option>
                      <option value="Oman">Oman</option>
                      <option value="Pakistan">Pakistan</option>
                      <option value="Palau">Palau</option>
                      <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
                      <option value="Panama">Panama</option>
                      <option value="Papua New Guinea">Papua New Guinea</option>
                      <option value="Paraguay">Paraguay</option>
                      <option value="Peru">Peru</option>
                      <option value="Philippines">Philippines</option>
                      <option value="Pitcairn">Pitcairn</option>
                      <option value="Poland">Poland</option>
                      <option value="Portugal">Portugal</option>
                      <option value="Puerto Rico">Puerto Rico</option>
                      <option value="Qatar">Qatar</option>
                      <option value="Reunion">Reunion</option>
                      <option value="Romania">Romania</option>
                      <option value="Russian Federation">Russian Federation</option>
                      <option value="Rwanda">Rwanda</option>
                      <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                      <option value="Saint Lucia">Saint Lucia</option>
                      <option value="St. Pierre and Miquelon">St. Pierre and Miquelon</option>
                      <option value="St. Vincent and Grenadines">St. Vincent and Grenadines</option>
                      <option value="Samoa">Samoa</option>
                      <option value="San Marino">San Marino</option>
                      <option value="San Tome/Principe">San Tome/Principe</option>
                      <option value="Saudi Arabia">Saudi Arabia</option>
                      <option value="Senegal">Senegal</option>
                      <option value="Serbia">Serbia</option>
                      <option value="Serbia and Montenegro">Serbia and Montenegro</option>
                      <option value="Seychelles">Seychelles</option>
                      <option value="Sierra Leone">Sierra Leone</option>
                      <option value="Singapore">Singapore</option>
                      <option value="Slovak Republic">Slovak Republic</option>
                      <option value="Slovenia">Slovenia</option>
                      <option value="Solomon Islands">Solomon Islands</option>
                      <option value="Somalia">Somalia</option>
                      <option value="South Africa">South Africa</option>
                      <option value="South Korea">South Korea</option>
                      <option value="Spain">Spain</option>
                      <option value="Sri Lanka">Sri Lanka</option>
                      <option value="Sudan">Sudan</option>
                      <option value="Suriname">Suriname</option>
                      <option value="Svalbard/Jan Mayen Isls.">Svalbard/Jan Mayen Isls.</option>
                      <option value="Swaziland">Swaziland</option>
                      <option value="Sweden">Sweden</option>
                      <option value="Switzerland">Switzerland</option>
                      <option value="Syria">Syria</option>
                      <option value="Taiwan">Taiwan</option>
                      <option value="Tajikistan">Tajikistan</option>
                      <option value="Tanzania">Tanzania</option>
                      <option value="Thailand">Thailand</option>
                      <option value="Timor-Leste">Timor-Leste</option>
                      <option value="Togo">Togo</option>
                      <option value="Tokelau">Tokelau</option>
                      <option value="Tonga">Tonga</option>
                      <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                      <option value="Tunisia">Tunisia</option>
                      <option value="Turkey">Turkey</option>
                      <option value="Turkmenistan">Turkmenistan</option>
                      <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                      <option value="Tuvalu">Tuvalu</option>
                      <option value="Uganda">Uganda</option>
                      <option value="Ukraine">Ukraine</option>
                      <option value="Uruguay">Uruguay</option>
                      <option value="United Arab Emirates">United Arab Emirates</option>
                      <option value="Uzbekistan">Uzbekistan</option>
                      <option value="Vanuatu">Vanuatu</option>
                      <option value="Vatican City">Vatican City</option>
                      <option value="Venezuela">Venezuela</option>
                      <option value="Viet Nam">Viet Nam</option>
                      <option value="Virgin Islands (British)">Virgin Islands (British)</option>
                      <option value="Virgin Islands (US)">Virgin Islands (US)</option>
                      <option value="Wallis/Futuna Isls.">Wallis/Futuna Isls.</option>
                      <option value="Western Sahara">Western Sahara</option>
                      <option value="Yemen">Yemen</option>
                      <option value="Zambia">Zambia</option>
                      <option value="Zimbabwe">Zimbabwe</option>
                    </select>
 
                   	<div id="reqOptIn" class="radio">
                      <!-- req optin -->
                      <input id="optIn1" name="optIn1" type="checkbox" value="T" /> <label>Yes! Please send emails regarding Act!</label>
                    </div>

                    <!-- provinces -->
                    <select name="stateProv" id="stateProv">
                      <option selected="selected" value="">Province</option>
                      <option value="AB">Alberta</option>
                      <option value="BC">British Columbia</option>
                      <option value="MB">Manitoba</option>
                      <option value="NB">New Brunswick</option>
                      <option value="NL">Newfoundland and Labrador</option>
                      <option value="NS">Northwest Territories</option>
                      <option value="NT">Nova Scotia</option>
                      <option value="NU">Nunavut</option>
                      <option value="ON">Ontario</option>
                      <option value="PE">Prince Edward Island</option>
                      <option value="QC">Quebec</option>
                      <option value="SK">Saskatchewan</option>
                      <option value="YT">Yukon</option>
                    </select>
                                                    
                  <input type="submit" name="submit" value="Submit" />
                                          
                </form>
		</div>
	</div>
</div>

<!-- PORTFOLIO -->
<div class="portfolio">
	<div class="portfolioInner">
    <div id="actPremiumCloud" class="piece col-md-6">
    	<div class="priceOverview">
        <h2>Act! Premium</h2>
        <p>Quickly tap into all relationship details, efficiently manage your calendar and opportunities, and send targeted emarketing campaigns from in the office or on the road.</p>
      </div>
      <div class="priceInfo">
       	<h3>Managed by you &mdash;<br/>for maximum control!</h3>
        <p class="priceStrike"><span>$25/user/mo</span></p>
      	<div class="priceWrapper">
          <div class="dollar">$</div>
          <p id="premDesktopPriceU" class="price">19<span class="usd"> /user/month</span></p>
        </div>
        <select id="premDesktopTerm" name="premDesktopTerm">
          <option value="pMonth">billed monthly</option>
          <option value="pAnnual">billed annually</option>
          <option value="pLicense">license + 1 year annual subscription</option>
        </select>
        <p class="upgradeCTA"><strong>To order, call <span class="orange">(866) 873-2006</span></strong></p>
        <a href="https://buy.act.com/en-US/trial/product/ActPremium/plan/Month"><button class="freetrial btn-md">Free trial</button></a>
        <div class="priceDets">
          <p class="center"><strong>Includes:</strong></p>
          <ul>
          	<li>Windows&reg;, Web, &amp; Mobile</li>
            <li>Email marketing (500 contacts)</li>
            <li>Expert technical support</li>
            <li>Video training</li>
            <li>New features and compatibility updates</li>
            <li><a href="/documents/Act_Premium_Brief.pdf" target="_blank"> Product overview</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div id="actPremiumCloud" class="piece col-md-6">
    	<div class="priceOverview">
        <h2>Act! Premium Cloud</h2>
        <p>Get access to Act! Premium in a secure cloud environment &ndash; we'll handle the technical steps, so you can jump right into rich contact, calendar, and opportunity details from your computer, tablet or smartphone.</p>
      </div>
      <div class="priceInfo">
      	<h3>Hosted by us &mdash;<br/>no IT required!</h3>
        <p>&nbsp;</p>
      	<div class="priceWrapper">
          <div class="dollar">$</div>
          <p id="premHostedPrice" class="price">35<span class="usd"> /user/month</span></p>
        </div>
        <select id="premHostedTerm" name="premHostedTerm">
          <option value="hAnnual">billed annually</option>
          <option value="hMonth">billed monthly</option>
        </select>
        <div class="pay">
        	Today you'll pay: <span id="payCloud"></span>
        </div>
        <a id="buyHosted" href=""><button type="button" class="btn-md">Buy</button></a>
        <a href="https://buy.act.com/en-US/trial/product/ActPremium/plan/Month"><button class="freetrial btn-md">Free trial</button></a>
        <div class="priceDets">
          <p class="center"><strong>Includes:</strong></p>
          <p class="center" style="margin-top:0;">All Act! Premium benefits, plus:</p>
          <ul>
          	<li><strong>Instant online access to Act!</strong></li>
            <li><strong>Secure cloud hosting service</strong></li>
            <li><strong>Automatic upgrades</strong></li>
            <li><strong>Nightly backups</strong></li>
            <li><a href="/documents/Act_Premium_Cloud_Brief.pdf" target="_blank"> Product overview</a></li>
          </ul>
          <p class="center">If your version of Act! is not currently hosted by Swiftpage, get tips on migration <a href="/documents/Act_Premium_Cloud_Migration_Tips.pdf" target="_blank">here</a>.</p>
        </div>
      </div>
    </div>
  </div>
</div>


<div class="addInfo">
	<div class="addInfoInner">
    <p>Call <span class="orange">866-873-2006</span> or contact your Act! Certified Consultant*.</p>
    <p><span><a href="/products/system/v17/premium/"><span class="halflings glyphicon-sys"></span> System Requirements</a></p>
  </div>
</div>

<!-- TESTIMONIALS -->
<div class="testimonials">
	<div class="testimonialInner">
  	<div class="col-sm-3">
    	<img src="/img/testimonials/m-8.png" alt="PHOTO" class="img-responsive" />
    </div>
    <div class="col-sm-9 testimonial">
    	<p class="quote">Our customers expect great things from us, and Act! helps ensure we remain responsive to their needs.</p>
      <p class="byline">Lee S.</p>
      <p><a href="/customer-successes/" class="textlink">More customer testimonials</a></p>
    </div>
  </div>
</div>

<div class="essentials">
	<div class="cta">
  	<h2>Looking for Act! Cloud Essentials?</h2>
    <a href="/buy/act-essentials"><button class="btn-lg">Buy now</button></a>
	</div>
</div>

</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
    <p>Customer is a participant in the Swiftpage Customer Reference Program and may be eligible for participation-based incentives.</p>
    <p>*Act! Certified Consultants are third-party vendors. Swiftpage and its affiliates are in no way liable or responsible for claims made related to the services provided by third-party vendors.</p>
    <!--#include virtual="/includes/important-note.aspx" -->
  </div>
</div>
</asp:Content>
