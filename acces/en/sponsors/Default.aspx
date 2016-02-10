<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/acces/en/Conference.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! Certified Consultant European Summit 2015 | Sponsors &amp; Exhibitors</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
<script type="text/javascript">
$(document).ready(function(){
	$("#sponsorTitle h3").click(function(){
		$("#sponsorTitle .sponsorDetails").toggle(500);
		$("#sponsorTitle h3 span").toggleClass('glyphicon-expand, glyphicon-collapse');
		$("#sponsorTitle h3").toggleClass('sponsorOff, sponsorOn');
	});
	$("#sponsorPremium h3").click(function(){
		$("#sponsorPremium .sponsorDetails").toggle(500);
		$("#sponsorPremium h3 span").toggleClass('glyphicon-expand, glyphicon-collapse');
		$("#sponsorPremium h3").toggleClass('sponsorOff, sponsorOn');
	});
	$("#sponsorExhibitor h3").click(function(){
		$("#sponsorExhibitor .sponsorDetails").toggle(500);
		$("#sponsorExhibitor h3 span").toggleClass('glyphicon-expand, glyphicon-collapse');
		$("#sponsorExhibitor h3").toggleClass('sponsorOff, sponsorOn');
	});
	$("#sponsorReception h3").click(function(){
		$("#sponsorReception .sponsorDetails").toggle(500);
		$("#sponsorReception h3 span").toggleClass('glyphicon-expand, glyphicon-collapse');
		$("#sponsorReception h3").toggleClass('sponsorOff, sponsorOn');
	});
	$("#sponsorTraining h3").click(function(){
	    $("#sponsorTraining .sponsorDetails").toggle(500);
	    $("#sponsorTraining h3 span").toggleClass('glyphicon-expand, glyphicon-collapse');
	    $("#sponsorTraining h3").toggleClass('sponsorOff, sponsorOn');
	});
	$("#sponsorPacket h3").click(function(){
		$("#sponsorPacket .sponsorDetails").toggle(500);
		$("#sponsorPacket h3 span").toggleClass('glyphicon-expand, glyphicon-collapse');
		$("#sponsorPacket h3").toggleClass('sponsorOff, sponsorOn');
	});
	$("#sponsorAlacarte h3").click(function(){
		$("#sponsorAlacarte .sponsorDetails").toggle(500);
		$("#sponsorAlacarte h3 span").toggleClass('glyphicon-expand, glyphicon-collapse');
		$("#sponsorAlacarte h3").toggleClass('sponsorOff, sponsorOn');
	});
});
</script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!--#include virtual="/acces/en/inc/althero.html" -->
<!--#include virtual="/acces/en/inc/nav.html" -->

<div class="main">
	<div class="mainInner">
  	<h1>Sponsors &amp; Exhibitors</h1>
    <p>Make the most of this opportunity and showcase your products and services to the largest collection of Act! Certified Consultants in Europe! The Act! Certified Consultant European Summit is your unique opportunity to interact with a passionate and engaged audience, promoting your solutions to Act! experts from around the globe.</p>
    <p>Don’t miss your golden opportunity to grow your network – secure your place at the Act! Certified Consultant European Summit today!</p>
    <a href="http://acces-2015-sponsors-and-exhibitors.eventbrite.com" target="_blank"><button class="btn-lg">Signup for Sponsorship</button></a>
    
    <!-- SPONSOR -->
    <div id="sponsorTitle" class="sponsor">
    	<h3 class="sponsorOff">Title Sponsor Package <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>The Title Sponsor is the main sponsor. This package provides the highest visibility and engagement to increase brand and product awareness, demonstrate your latest offerings, and maximize your exposure by engaging conference attendees during the main conference (December 9). The Title Sponsor Package includes:</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Exclusive Main Stage Speaking Engagement</li>
              <li>Your logo on the &ldquo;Sponsors&rdquo; page of the Conference registration page</li>
              <li>3 x conference pass with meals (Day 1 Training and Evening Reception + Day 2 Conference)</li>
              <li>Inclusion in all post-conference email messages sent to event attendees</li>
              <li>Recognition during the keynote presentation</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Full Page Logo, URL, and 250-word description in the conference packet and guide</li>
              <li>One literature piece &amp; giveaway (provided by you) included in the conference packet</li>
              <li>Prominent position as the Title Sponsor on event signage</li>
              <li>Dedicated joint webcast promoted to all attendees following the conference</li>
              <li>Receive a list of attendees post event</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorPremium" class="sponsor">
    	<h3 class="sponsorOff">Premium Event Sponsor Package <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>This package includes a host of benefits to promote your company and solutions including:</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Inclusion in the on-site Exhibitor Lounge (1 x 6&rsquo; table, 2 chairs, 1 electrical outlet, internet)</li>
              <li>2 x conference pass with meals (Day 1 Training and Evening Reception + Day 2 Conference)</li>
              <li>1 Coffee break Sponsorship</li>
              <li>Your logo on the &ldquo;Sponsors&rdquo; page of the Conference registration page</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Logo, URL, and 100-word description in the conference packet and guide</li>
              <li>One literature piece &amp; giveaways (provided by you) included in the conference packet</li>
              <li>Logo listed on event signage as an Event Sponsor (all branding supplied by you)</li>
              <li>Receive a list of attendees post event</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorExhibitor" class="sponsor">
    	<h3 class="sponsorOff">Exhibitor Package <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>This package includes a host of benefits to promote your company and its solutions including:</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Inclusion in the on-site Exhibitor Lounge (1 x 6&rsquo; table, 2 chairs, 1 electrical outlet, internet)</li>
              <li>1 x conference pass with meals (Day 1 Training and Evening Reception + Day 2 Conference)</li>
              <li>Your logo on the &ldquo;Sponsors&rdquo; page of the Conference registration page</li>
              <li>Inclusion in 1 post-conference email message sent to event attendees</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>One literature piece &amp; giveaways (provided by you) included in the conference packet</li>
              <li>Logo listed on event signage as a Sponsor (all branding supplied by you)</li>
              <li>Receive a list of attendees post event</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorReception" class="sponsor">
    	<h3 class="sponsorOff">Evening Reception Sponsor <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>We are offering the opportunity for one company to sponsor our Evening Reception on December 8.  For our Partners who travel to the conference the previous day, we are hosting an Evening Reception with drinks and buffet.  We expect many international attendees at this pre-conference informal networking event.  Our Partners will get to know the &ldquo;Swiftie&rdquo; team and make valuable contacts &ndash; including from your company &ndash; from around the world!</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Have your company&rsquo;s name associated with our Evening Reception &ndash; your company logo and URL co-branded with Swiftpage, prominently displayed as delegates first join the Reception</li>
              <li>You&rsquo;ll also get a prominent mention during the remarks</li>
              <li>1 x conference pass with meals (Day 1 Training and Evening Reception + Day 2 Conference)</li>
              <li>Your logo on the &ldquo;Sponsors&rdquo; page of the Conference registration page</li>
              <li>Logo, URL, and 100-word description in the conference packet and guide</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>One literature piece &amp; giveaways (provided by you) included in the conference packet</li>
              <li>Logo listed on event signage as an Event Sponsor (all branding supplied by you)</li>
              <li>Receive a list of attendees post event</li>
              <li>Opportunity to sponsor evening drinks and/or party games &ndash; to be agreed; may incur additional cost.</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorTraining" class="sponsor">
    	<h3 class="sponsorOff">Training Day Sponsor <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>We are offering the opportunity for one company to sponsor our Training Day on the December 8. We expect many international attendees at this pre-conference Training Day which will include lunch and two scheduled breaks during the day.</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Have your company&rsquo;s name associated with our Training Day &ndash; your company logo and URL co-branded with Swiftpage, prominently displayed on all training materials</li>
              <li>Exclusive stand space in the Training Foyer (1 x 6&rsquo; table, 2 chairs, 1 electrical outlet, internet)</li>
              <li>1 x conference pass with meals (Day 1 Training and Evening Reception + Day 2 Conference)</li>
              <li>Your logo on the &ldquo;Sponsors&rdquo; page of the Conference registration page</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Logo, URL, and 100-word description in the conference packet and guide</li>
              <li>One literature piece &amp; giveaways (provided by you) included in the conference packet</li>
              <li>Logo listed on event signage as an Event Sponsor (all branding supplied by you)</li>
              <li>Receive a list of attendees post event</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorPacket" class="sponsor">
    	<h3 class="sponsorOff">Packet and Merchandise Inclusions <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Increase your brand and product awareness by including literature pieces or logo/URL on pens, bags, giveaways etc. (all items supplied by you) in the official conference packet that every attendee receives at registration. Price shown is for up to 2 items</p>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorAlacarte" class="sponsor">
    	<h3 class="sponsorOff">A la Carte Sponsorship <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>You would like to get involved in another way? Get in touch and we can discuss your sponsorship please email <a href="mailto:Simon.Hales@Swiftpage.com?subject=Global%20Partner%20Conference%20Sponsorship" target="_blank">Simon.Hales@Swiftpage.com</a> or call: +44 (0) 191 240 6272</p>
      </div>
    </div>
    
    <p class="center" style="margin-top:48px;">Interested? To discuss sponsorship please email Simon Hales (<a href="mailto:Simon.Hales@Swiftpage.com?subject=Global%20Partner%20Conference%20Sponsorship" target="_blank">Simon.Hales@Swiftpage.com</a>) or call +44 (0) 191 240 6272.</p>
    
  </div>
</div>

<!--#include virtual="/acces/en/inc/cta.html" -->

</asp:Content>
