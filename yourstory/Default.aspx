<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/Products.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! Customer Testimonials | Tell Us Your Story</title>
  <meta name="description" content="Share your Act! customer success story with the world. Everyone has a story. We want to hear yours. Tell us about your business and the role Act! has played on your success.">
  <meta name="keywords" content="">


</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
<style type="text/css">
    .hero{
        background: url('/img/store_front.jpg') no-repeat 0 50%;
        background-size: cover;
    }
    .heroInner h1{
        font-size: 72px;   
    }
    .story {
        background: #39464F;
        color: white;
        padding: 30px 0;
        font-size: 20px;
    }
    .story p {
        margin: 0;
    }
    .question h4 {
        padding-top: 40px;
        font-weight: bold;
        font-size: 24px;
    }
    .question p {
        font-size: 20px;   
    }
    .question label {
        padding-bottom: 20px;   
    }
    .question .btn-lg {
        padding: 20px 40px;
    }
    #about h4 {
        margin-bottom: 40px;   
    }
    #about label {
        padding-bottom: 0;   
       
    }
    #question-5 h4{
        margin-bottom: 20px;   
    }
    .smiley {
        height: 300px;
        width: 300px;
        margin: 40px auto;
    }
    .question {
        display: none;   
    }
    button.next, button#submitForm {
        margin-bottom: 40px;   
    }
    
    .btn-lg.back {
        background: #DFE3E6;
        color: #526774;
    }
    .testimonials{
        background:#EFF1F3;
    }
    #question-6 h2 {
        font-size: 36px;
        margin-bottom: 40px;
    }
    .note {
        background: #39464F;
        color: white;
        padding: 5px 0;
    }
    .note {
        padding: 10px;   
    }
    .note p {
        margin: 0; 
        font-size: 12px;
    }
    .question .with-errors {
        color: red;   
    }

</style>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
    <script src="/js/validator.min.js" type="text/javascript"></script>
    <script src="/js/testimonial.js" type="text/javascript"></script>
    <script type="text/javascript">
		var timerId = null, timeout = 5;
		//--></script>
		<script type='text/javascript'><!--//
		function WaitUntilCustomerGUIDIsRetrieved() {
		if (!!(timerId)) {
				if (timeout == 0) {
		return;
		}
		if (typeof this.GetElqCustomerGUID === 'function') {
						document.forms["Testimonial"].elements["elqCustomerGUID"].value = GetElqCustomerGUID();
		return;
		}
		timeout -= 1;
		}
		timerId = setTimeout("WaitUntilCustomerGUIDIsRetrieved()", 500);
		return;
		}
		window.onload = WaitUntilCustomerGUIDIsRetrieved;
		_elqQ.push(['elqGetCustomerGUID']);
		</script>
    
    <script type="text/javascript">
        
        $(document).ready(function(){
						// Display thank you message
            var thanks = getParameterByName('thanks');
						if (thanks == "y"){
                $('#question-1').hide();
                $('.testimonials').hide();
                $('#question-6').show();
            }
						//Capture YSR
						var ysr = getParameterByName('ysr');
						$('#ysr').val(ysr);
            
		});
		
    </script>

    
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!-- HERO -->
<div class="hero">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 text-center heroInner">
                <h1>Tell Us Your Story</h1>
            </div>
        </div>
    </div>
</div><!--end hero-->

<div class="story">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 text-center col-xs-offset-2">
                <p>Everyone has a story. We want to hear yours. Tell us about your business and the role Act! has played in your success. We are helping customers share their stories with the world by featuring select stories on act.com.&#42; Get your story heard!</p>
            </div>
        </div>
    </div>
</div><!--end story-->
    
                <form data-toggle="validator" role="form" id="free-trial" action="https://s1966950654.t.eloqua.com/e/f2">
                	<input type="hidden" name="LeadSource" value=" LCRMAA0001XK">
                  <input type="hidden" name="elqFormName" value="Testimonial">
                  <input type="hidden" name="elqSiteID" value="1966950654">
                  <input type="hidden" name="hiddenCampaignId" value="" />
                  <input type="hidden" name="elqCustomerGUID" value="">
                  <input type="hidden" name="elqCookieWrite" value="0">
                <input type="hidden" name="querystring" id="ysr" value="">
                <!-- UTM -->
                <input type="hidden" name="utm_source" value="">
                <input type="hidden" name="utm_medium" value="">
                <input type="hidden" name="utm_content" value="">
                <input type="hidden" name="utm_campaign" value="">
                <input type="hidden" name="utm_name" value="">
                <input type="hidden" name="utm_term" value="">
                
<div class="question" id="question-1">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 text-center col-xs-offset-2">
                <h4>Question 1 of 4...</h4>
                    <div class="form-group">
                        <label for="question1">What were the business challenges that led you to purchase a CRM system?&#42;</label>
                        <textarea name="Challenges" class="form-control" id="question1" rows="5"></textarea>
                        <div class="help-block with-errors"></div>
                    </div>
        
                    <button class="btn-lg next">Next</button>
                    
            </div>
        </div>
    </div>
</div><!--end question-1-->
    
<div class="question" id="question-2">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 text-center col-xs-offset-2">
                <h4>Question 2 of 4...</h4>
                    <div class="form-group">
                        <label for="question2">How did Act! help you overcome those challenges?&#42;</label>
                        <textarea name="overcome" class="form-control" id="question2" rows="5"></textarea>
                        <div class="help-block with-errors"></div>
                    </div>
                    
                    <div class="back-next">
                        <button class="btn-lg back">Back</button>
                        <button class="btn-lg next">Next</button>
                    </div>
            </div>
        </div>
    </div>
</div><!--end question-2-->
    
<div class="question" id="question-3">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 text-center col-xs-offset-2">
                <h4>Question 3 of 4...</h4>
                
                    <div class="form-group">
                        <label for="question3">How has using Act! improved your business?&#42;</label>
                        <textarea name="improved" class="form-control" id="question3" rows="5"></textarea>
                        <div class="help-block with-errors"></div>
                    </div>
                    
                    <div class="back-next">
                        <button class="btn-lg back">Back</button>
                        <button class="btn-lg next">Next</button>
                    </div>
                
            </div>
        </div>
    </div>
</div><!--end question-3-->
    
<div class="question" id="question-4">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 text-center col-xs-offset-2">
                <h4>Question 4 of 4...</h4>
               
                    <div class="form-group">
                        <label for="question4">Why do you love Act!?&#42;</label>
                        <textarea name="quote" class="form-control" id="question4" rows="5"></textarea>
                        <div class="help-block with-errors"></div>
                    </div>
                    
                    <div class="back-next">
                        <button class="btn-lg back">Back</button>
                        <button class="btn-lg next">Next</button>
                    </div>
            
            </div>
        </div>
    </div>
</div><!--end question-4-->
    
<div class="question" id="question-5">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-xs-offset-3">
                <h4>Tell us a little more about yourself.</h4>
                
                    <div class="form-group">
                        <label for="fName">First Name &#42;</label>
                        <input name="firstName" type="text" class="form-control" id="firstName" required>
                        <div class="help-block with-errors"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="lName">Last Name &#42;</label>
                        <input name="lastName" type="text" class="form-control" id="lastName" required>
                        <div class="help-block with-errors"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email Address &#42;</label>
                        <input name="emailAddress" type="email" class="form-control" id="emailAddress" required>
                        <div class="help-block with-errors"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="company">Company &#42;</label>
                        <input name="company" type="text" class="form-control" id="company" required>
                        <div class="help-block with-errors"></div>
                    </div>
                    
                    <div class="form-group">
                        <label for="industry">Industry &#42;</label>
                        <select class="form-control" id="industry" required>
                            <option value=""></option>
                            <option value="Automotive / Transport">Automotive / Transport</option>
                            <option value="Banking / Financial Services">Banking / Financial Services</option>
                            <option value="Business Services / Independent ">Business Services / Independent </option>
                            <option value="Consultant / Agency">Consultant / Agency</option>
                            <option value="Charitable Organizations / Nonprofits / Membership Organizations">Charitable Organizations / Nonprofits / Membership Organizations</option>
                            <option value="Construction / Contractor">Construction / Contractor</option>
                            <option value="Education">Education</option>
                            <option value="Engineering">Engineering</option>
                            <option value="Entertainment / Media">Entertainment / Media</option>
                            <option value="Government / Public Administration">Government / Public Administration</option>
                            <option value="Health Care">Health Care</option>
                            <option value="Insurance">Insurance</option>
                            <option value="Legal">Legal</option>
                            <option value="Manufacturing">Manufacturing</option>
                            <option value="Real Estate">Real Estate</option>
                            <option value="Retail and Consumer Goods">Retail and Consumer Goods</option>
                            <option value="Security Products & Services">Security Products &amp; Services</option>
                            <option value="Technology">Technology</option>
                            <option value="Travel / Hospitality / Leisure">Travel / Hospitality / Leisure</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" id="terms" data-error="You must agree to the terms before submitting" required>
                              I agree to the <a href="/documents/PublicityReferenceAgreement_Final.pdf" target="_blank">terms and conditions&#42;</a>
                          </label>
                          <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div class="text-center">
                        <button class="btn-lg back">Back</button>
                        <button type="submit" id="submitForm" class="btn-lg"/>Submit my story</button> 
                    </div>
            </div>
        </div>
    </div>
</div><!--end question-5-->

</form>    

<div class="question" id="question-6">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 text-center col-xs-offset-2">
                
                <div class="smiley">
                    <img src="/img/smiley.png" class="img-responsive">
                </div>
                <h2>Thank you for sharing your story!</h2>
            </div>
        </div>
    </div>
</div><!--end question-4-->
    
    
    
<!-- TESTIMONIALS -->
<div class="testimonials">
	<div class="testimonialInner">
    <div class="col-sm-3">
        <img src="/img/testimonials/m-4.png" alt="Photo" class="img-responsive">  
    </div>
    <div class="col-sm-9 testimonial">
    	<p class="quote">Act! allows me to be mobile so I always have current information, whether I&rsquo;m still at home or whether I&rsquo;m on the road. It helps us have our Act! together - no pun intended!</p>
        <p class="byline">Kevin K.</p>
    </div>
  </div>
</div>
    
<div class="note">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <p>&#42;Stories will be selected at the discretion of Swiftpage.</p>
                <p>Customer is a participant in the Swiftpage Customer Reference Program and may be eligible for participation-based incentives.</p>
            </div>
        </div>
    </div>
</div>

</asp:Content>

<asp:Content ID="FootnoteContent" ContentPlaceHolderID="FootnoteContent" runat="server">
<div class="footnotes">
	<div class="footnotesInner">
   
  </div>
</div>
</asp:Content>