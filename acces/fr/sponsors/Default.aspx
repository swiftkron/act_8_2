<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/acces/fr/Conference.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Sommet Européen des Consultants Certifiés Act! 2015 | Sponsors et exposants</title>
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

<!--#include virtual="/acces/fr/inc/althero.html" -->
<!--#include virtual="/acces/fr/inc/nav.html" -->

<div class="main">
	<div class="mainInner">
  	<h1>Sponsors et exposants</h1>
    <p>Le sommet rassemble un nombre considérable de consultants certifiés Act! en Europe et représente une occasion idéale de vous faire connaitre auprès d’un public intéressé et informé, de présenter vos produits et services et de promouvoir vos solutions à des experts Act! du monde entier.</p>
    <p>Pour profiter de cette opportunité en or de développer votre réseau, pensez à bloquer votre place au Sommet Européen des Consultants Certifiés Act! dès aujourd’hui !</p>
    <a href="http://acces-2015-sponsors-and-exhibitors.eventbrite.com" target="_blank"><button class="btn-lg">S’inscrire en tant que sponsor</button></a>
    
    <!-- SPONSOR -->
    <div id="sponsorTitle" class="sponsor">
    	<h3 class="sponsorOff">Sponsor officiel <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Formule réservée au sponsor principal. Vous bénéficierez de la plus grande visibilité pour faire connaitre votre marque et pour présenter votre offre de produits. Une intervention pendant la conférence (journée du 9 décembre) vous permettra d’optimiser votre présence et d’accrocher les participants. Avantages de la formule sponsor officiel :</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Prise de parole en exclusivité sur la scène principale</li>
              <li>Votre logo dans la rubrique Sponsors de la page d’inscription à la conférence</li>
              <li>3 entrées à la conférence, repas inclus (Jour 1 Formation et cocktail de bienvenue + Jour 2 Conférence)</li>
              <li>Mention du sponsor officiel dans toutes les communications e-mail envoyées aux inscrits à l’évènement</li>
              <li>Reconnaissance du sponsor officiel lors de la présentation keynote</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Encart promotionnel d’une page dans le pack et guide conférence (logo, URL et description de 250 mots)</li>
              <li>Possibilité d’inclure une plaquette et un article-cadeau (fournis par vos soins) dans la pochette d’accueil</li>
              <li>Mise en avant du sponsor officiel sur les banderoles de l’évènement</li>
              <li>Promotion de votre marque dans le webcast envoyé à tous les participants à l’issue de la conférence</li>
              <li>Liste des participants communiquée après l’événement</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorPremium" class="sponsor">
    	<h3 class="sponsorOff">Sponsor évènement <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Une formule avantageuse pour promouvoir votre société et vos solutions :</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Espace réservé au salon des exposants (1 table de 2m, 2 chaises, 1 prise de courant, Internet)</li>
              <li>2 entrées à la conférence, repas inclus (Jour 1 Formation et cocktail de bienvenue + Jour 2 Conférence)</li>
              <li>1 plage promotionnelle pendant la pause café</li>
              <li>Votre logo dans la rubrique Sponsors de la page d’inscription à la conférence</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Encart promotionnel d’une page dans le pack et guide conférence (logo, URL et description de 100 mots)</li>
              <li>Possibilité d’inclure une plaquette et un article-cadeau (fournis par vos soins) dans la pochette d’accueil</li>
              <li>Logo du sponsor événement sur les banderoles de l’évènement (articles promotionnels fournis par vos soins)</li>
              <li>Liste des participants communiquée après l’évènement</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorExhibitor" class="sponsor">
    	<h3 class="sponsorOff">Formule exposant <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Une formule avantageuse pour promouvoir votre société et vos solutions :</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Espace réservé au salon des exposants (1 table de 2m, 2 chaises, 1 prise de courant, Internet)</li>
              <li>1 entrée à la conférence, repas inclus (Jour 1 Formation et cocktail de bienvenue + Jour 2 Conférence)</li>
              <li>Votre logo dans la rubrique Sponsors de la page d’inscription à la conférence</li>
              <li>Mention du sponsor exposant dans 1 communication e-mail envoyée aux participants à l’issue de la conférence</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Possibilité d’inclure une plaquette et un article-cadeau (fournis par vos soins) dans la pochette d’accueil</li>
              <li>Logo du sponsor exposant sur les banderoles de l’évènement (articles promotionnels fournis par vos soins)</li>
              <li>Liste des participants communiquée après l’évènement</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorReception" class="sponsor">
    	<h3 class="sponsorOff">Sponsor Soirée de bienvenue <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Une formule qui permet à une société de sponsoriser notre soirée de bienvenue du 8 décembre. Il s’agit d’un cocktail et buffet pour accueillir les partenaires qui arrivent la veille de la conférence. De nombreux participants internationaux sont attendus à cet évènement de réseautage la veille de la conférence. Ce sera l’occasion pour nos partenaires de faire connaissance avec l’équipe de Swifties et de nouer des contacts utiles (par exemple votre société) venus du monde entier !</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Le nom de votre société associé à la soirée de bienvenue : logo et URL associés à la marque Swiftpage sur les supports et bien en évidence à l’entrée de la salle de réception</li>
              <li>Mise en avant de votre marque pendant les présentations</li>
              <li>1 entrée conférence, repas inclus (Jour 1 Formation et cocktail d’accueil + Jour 2 Conférence)</li>
              <li>Votre logo dans la rubrique Sponsors de la page d’inscription à la conférence</li>
              <li>Encart promotionnel d’une page dans le pack et guide conférence (logo, URL et description de 100 mots)</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Possibilité d’inclure une plaquette et un article-cadeau (fournis par vos soins) dans la pochette d’accueil</li>
              <li>Logo du sponsor sur les banderoles de l’évènement (articles promotionnels fournis par vos soins)</li>
              <li>Liste des participants après l’évènement</li>
              <li>Possibilité de sponsoriser le cocktail et/ou des animations (sur demande, majoration éventuelle).</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorTraining" class="sponsor">
    	<h3 class="sponsorOff">Sponsor Formation <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Une opportunité de sponsoring pour la journée de formation du 8 décembre. De nombreux participants internationaux sont attendus à cette journée de formation organisée la veille de la conférence (déjeuner et deux pauses au cours de la journée).</p>
        <div class="sponsorList">
          <div class="col-md-6">
            <ul>
              <li>Votre nom de société associé à notre formation : logo et URL de votre société associés à la marque Swiftpage sur les supports et bien en évidence sur les supports de formation</li>
              <li>Espace exclusif dans la salle de formation (1 table de 2m, 2 chaises, 1 prise de courant, Internet)</li>
              <li>1 entrée conférence, repas inclus (Jour 1 Formation et cocktail de bienvenue + Jour 2 Conférence)</li>
              <li>Votre logo dans la rubrique Sponsors de la page d’inscription à la conférence</li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul>
              <li>Encart promotionnel d’une page dans le pack et guide conférence (logo, URL et description de 100 mots)
              <li>Possibilité d’inclure une plaquette et un article-cadeau (fournis par vos soins) dans la pochette d’accueil</li>
              <li>Logo du sponsor sur les banderoles de l’évènement (articles promotionnels fournis par vos soins)</li>
              <li>Liste des participants communiquée après l’évènement</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorPacket" class="sponsor">
    	<h3 class="sponsorOff">Formule pochette / marchandises <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Une formule pour faire connaitre votre marque et vos produits par l’intermédiaire de documentation ou stylos, sacoches, cadeaux promotionnels etc portant votre logo/URL (articles fournis par vos soins) dans la pochette conférence remise aux participants à leur arrivée. Le prix indiqué est pour 2 articles maximum.</p>
      </div>
    </div>

    <!-- SPONSOR -->
    <div id="sponsorAlacarte" class="sponsor">
    	<h3 class="sponsorOff">Autres opportunités de sponsoring <span class="glyphicon glyphicon-expand"></span></h3>
      <div class="sponsorDetails">
        <p>Vous souhaitez vous impliquer autrement ? Pour discuter d’autres possibilités de sponsoring, envoyez un e-mail à <a href="mailto:Simon.Hales@Swiftpage.com?subject=Global%20Partner%20Conference%20Sponsorship" target="_blank">simon.hales@Swiftpage.com</a> ou appelez le +44 (191) 240 6272 (GB)</p>
      </div>
    </div>
    
    <p class="center" style="margin-top:48px;">Intéressé ? Pour en savoir plus sur les opportunités de sponsoring, contacter Simon Hales par e-mail (<a href="mailto:Simon.Hales@Swiftpage.com?subject=Global%20Partner%20Conference%20Sponsorship" target="_blank">Simon.Hales@Swiftpage.com</a>) ou par téléphone au +44 (191) 240 6272 (GB)</p>
    
  </div>
</div>

<!--#include virtual="/acces/fr/inc/cta.html" -->

</asp:Content>
