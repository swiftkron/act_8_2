<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/acces/de/Conference.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Europäische Act! Certified Consultant Konferenz 2015 | Sponsoren und Aussteller</title>
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

<!--#include virtual="/acces/de/inc/althero.html" -->
<!--#include virtual="/acces/de/inc/nav.html" -->

<div class="main">
	<div class="mainInner">
  	<h1>Sponsoren und Aussteller</h1>
    <p>Sie möchten Ihre Produkte und Dienstleistungen so vielen Act! Certified Consultants wie möglich vorstellen? Die Europäische Act! Certified Consultant Konferenz ist der ideale Ort, um Ihr Netzwerk zu vergrößern, mit einem interessierten Publikum in Dialog zu treten und Ihre Lösungen Act! Experten aus aller Welt zu präsentieren.</p>
    <p>Lassen Sie sich diese einzigartige Gelegenheit nicht entgehen und sichern Sie sich jetzt Ihren Platz auf der Europäischen Act! Certified Consultant Konferenz 2015!</p>
    <a href="http://acces-2015-sponsors-and-exhibitors.eventbrite.com" target="_blank"><button class="btn-lg">Als Sponsor teilnehmen</button></a>
    
    <!-- SPONSOR -->
    <div id="sponsorTitle" class="sponsor">
    	<h3 class="sponsorOff">Sponsorenpaket für den Titelsponsor <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Der Titelsponsor ist der Hauptsponsor des Events. Dieses Paket sichert Ihnen maximale Präsenz und Interaktion, um die Konferenzteilnehmer auf Ihre Marke und Ihre Produkte aufmerksam zu machen und Ihre neuesten Angebote zur Schau zu stellen. Am 9. Dezember, dem eigentlichen Konferenztag, haben Sie die Gelegenheit, einen Vortrag zu halten. Das Sponsorenpaket für den Titelsponsor umfasst:</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Exklusive Rede im Hauptkonferenzraum</li>
              <li>Ihr Logo auf der Sponsorenseite der Konferenzwebsite</li>
              <li>Konferenzteilnahme inkl. Mahlzeiten für drei Personen (Schulungen und Abendveranstaltung an Tag 1 + Konferenz an Tag 2)</li>
              <li>Erwähnung in allen nach der Konferenz an die Teilnehmer gesendeten E-Mails</li>
              <li>Erwähnung während des Hauptvortrags</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Ganzseitiges Logo, Website-URL und Beschreibung (250 Wörter) im Konferenzpaket und dem Programmheft</li>
              <li>Broschüre (ein Stück) und Werbegeschenk im Konferenzpaket (von Ihnen bereitgestellt)</li>
              <li>Auffällige Positionierung als Titelsponsor auf den Konferenzschildern</li>
              <li>Eigener Webcast nach der Konferenz gemeinsam mit Swiftpage, zu dem alle Teilnehmer eingeladen werden</li>
              <li>Zugang zur Teilnehmerliste nach der Veranstaltung</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorPremium" class="sponsor">
    	<h3 class="sponsorOff">Sponsorenpaket für Premiumsponsoren <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Dieses Paket umfasst eine Reihe von Vorteilen, um Ihr Unternehmen und Ihre Lösungen bekannt zu machen:</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Platz im Sponsoren-Forum vor Ort (ein Tisch, zwei Stühle, eine Steckdose, Internetzugang)</li>
              <li>Konferenzteilnahme inkl. Mahlzeiten für zwei Personen (Schulung und Abendveranstaltung an Tag 1 + Konferenz an Tag 2)</li>
              <li>Sponsoring einer Kaffeepause</li>
              <li>Ihr Logo auf der Sponsorenseite der Konferenzwebsite</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Logo, Website-URL und Beschreibung (100 Wörter) im Konferenzpaket und dem Programmheft</li>
              <li>Broschüre (ein Stück) und Werbegeschenke im Konferenzpaket (von Ihnen bereitgestellt)</li>
              <li>Ihr Logo als Veranstaltungssponsor auf den Konferenzschildern (Branding wird von Ihnen bereitgestellt)</li>
              <li>Zugang zur Teilnehmerliste nach der Veranstaltung</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorExhibitor" class="sponsor">
    	<h3 class="sponsorOff">Ausstellerpaket <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Dieses Paket umfasst eine Reihe von Vorteilen, um Ihr Unternehmen und Ihre Lösungen bekannt zu machen:</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Platz im Sponsoren-Forum vor Ort (ein Tisch, zwei Stühle, eine Steckdose, Internetzugang)</li>
              <li>Konferenzteilnahme inkl. Mahlzeiten für eine Person (Schulung und Abendveranstaltung an Tag 1 + Konferenz an Tag 2)</li>
              <li>Ihr Logo auf der Sponsorenseite der Konferenzwebsite</li>
              <li>Erwähnung in einer nach der Konferenz an die Teilnehmer gesendeten E-Mail</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Broschüre (ein Stück) und Werbegeschenke im Konferenzpaket (von Ihnen bereitgestellt)</li>
              <li>Ihr Logo als Sponsor auf den Konferenzschildern (Branding wird von Ihnen bereitgestellt)</li>
              <li>Zugang zur Teilnehmerliste nach der Veranstaltung</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorReception" class="sponsor">
    	<h3 class="sponsorOff">Sponsor der Abendveranstaltung <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Für unsere ACCs, die bereits am Vortag anreisen, gibt es am 8. Dezember einen abendlichen Empfang mit Getränken und Buffet. Ein Unternehmen erhält die Möglichkeit, auf dieser Abendveranstaltung als Sponsor aufzutreten. Wir erwarten, dass viele internationale Konferenzbesucher an diesem ungezwungenen Networking-Event am Vorabend der Konferenz teilnehmen werden. Unsere Partner haben dabei die Gelegenheit, Mitarbeiter von Swiftpage kennenzulernen und wertvolle Kontakte zu knüpfen – darunter zu Ihrem Unternehmen!</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Auftritt als Sponsor der Abendveranstaltung – auffällige Positionierung Ihres Firmenlogos und Ihrer Website-URL gemeinsam mit dem Swiftpage Branding, wenn die Teilnehmer eintreffen</li>
              <li>Besondere Erwähnung bei der Begrüßung</li>
              <li>Konferenzteilnahme inkl. Mahlzeiten für eine Person (Schulung und Abendveranstaltung an Tag 1 + Konferenz an Tag 2)</li>
              <li>Ihr Logo auf der Sponsorenseite der Konferenzwebsite</li>
              <li>Logo, Website-URL und Beschreibung (100 Wörter) im Konferenzpaket und dem Programmheft</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Broschüre (ein Stück) und Werbegeschenke im Konferenzpaket (von Ihnen bereitgestellt)</li>
              <li>Ihr Logo als Veranstaltungssponsor auf den Konferenzschildern (Branding wird von Ihnen bereitgestellt)</li>
              <li>Zugang zur Teilnehmerliste nach der Veranstaltung</li>
              <li>Möglichkeit zum Sponsoring von Getränken und/oder unterhaltsamen Spielen je nach Vereinbarung; unter Umständen gegen eine zusätzliche Gebühr</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorTraining" class="sponsor">
    	<h3 class="sponsorOff">Sponsor des Schulungstages <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Ein Unternehmen erhält die Möglichkeit, an unserem Schulungstag am 8. Dezember als Sponsor aufzutreten. Wir erwarten, dass viele internationale Konferenzbesucher an dieser Schulung teilnehmen werden, die am Tag vor der Konferenz stattfindet und auch eine Mittagspause und zwei Kaffeepausen zum Gedankenaustausch umfasst.</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Auftritt als Sponsor des Schulungstages – auffällige Positionierung Ihres Firmenlogos und Ihrer Website-URL gemeinsam mit dem Swiftpage Branding in allen Schulungsunterlagen</li>
              <li>Exklusiver Stand im Eingangsbereich zum Schulungsraum (ein Tisch, zwei Stühle, eine Steckdose, Internetzugang)</li>
              <li>Konferenzteilnahme inkl. Mahlzeiten für eine Person (Schulung und Abendveranstaltung an Tag 1 + Konferenz an Tag 2)</li>
              <li>Ihr Logo auf der Sponsorenseite der Konferenzwebsite</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Logo, Website-URL und Beschreibung (100 Wörter) im Konferenzpaket und dem Programmheft</li>
              <li>Broschüre (ein Stück) und Werbegeschenke im Konferenzpaket (von Ihnen bereitgestellt)</li>
              <li>Ihr Logo als Veranstaltungssponsor auf den Konferenzschildern (Branding wird von Ihnen bereitgestellt)</li>
              <li>Zugang zur Teilnehmerliste nach der Veranstaltung</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorPacket" class="sponsor">
    	<h3 class="sponsorOff">Broschüren und Werbegeschenke im Konferenzpaket <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Sie möchten die Bekanntschaft Ihrer Marke und Ihrer Produkte steigern? Legen Sie Broschüren, Kugelschreiber, Taschen und andere Werbegeschenke mit Ihrem Logo/Ihrer Website-URL dem offiziellen Konferenzpaket bei, das jeder Teilnehmer erhält. Alle Artikel müssen von Ihnen bereitgestellt werden. Der angegebene Preis gilt für bis zu zwei Artikel.</p>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorAlacarte" class="sponsor">
    	<h3 class="sponsorOff">Maßgeschneidertes Sponsoring <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Sie möchten sich auf andere Art beteiligen? Treten Sie mit uns in Kontakt, um Ihr Sponsoring-Anliegen mit uns zu besprechen. Schreiben Sie einfach eine E-Mail an Simon Hales (<a href="mailto:Simon.Hales@Swiftpage.com?subject=Global%20Partner%20Conference%20Sponsorship" target="_blank">Simon.Hales@Swiftpage.com</a>) oder rufen Sie uns unter der britischen Nummer +44 191 240 6272 an.</p>
      </div>
    </div>
    
    <p class="center" style="margin-top:48px;">Sie haben Interesse? Bitte schreiben Sie eine E-Mail an Simon Hales (<a href="mailto:Simon.Hales@Swiftpage.com?subject=Global%20Partner%20Conference%20Sponsorship" target="_blank">Simon.Hales@Swiftpage.com</a>) oder rufen Sie uns unter +44 191 240 6272 an, um Ihre Sponsoring-Möglichkeiten mit uns zu besprechen.</p>

  </div>
</div>

<!--#include virtual="/acces/de/inc/cta.html" -->

</asp:Content>
