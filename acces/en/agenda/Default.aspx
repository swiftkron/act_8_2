<%@ Page Language="C#" ContentType="text/html" MasterPageFile="/acces/en/Conference.master" ResponseEncoding="UTF-8" %>

<asp:Content ID="MetaContent" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Act! Certified Consultant European Summit 2015  | Agenda</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
</asp:Content>

<asp:Content ID="StyleContent" ContentPlaceHolderID="StyleContent" runat="server">\
    <style type="text/css">
        .desc {
            display: none;
            color: white;
        }
        .agTitle h4 {
            cursor: pointer;
            padding: 0;
            margin: 0;
        }
        .agTitle p {
            padding-top: 20px;   
        }
        .noShow {
            display: none !important;   
            cursor: auto;
        }
        .show-hide {
            color: #fe5000;
        }

    </style>
</asp:Content>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="ScriptContent" runat="server">
  <script type="text/javascript">
$(document).ready(function() 
    { 
    
			$.ajax({
			type: "GET",
			url: "agenda.xml",
			dataType: "xml",
			success:function(xml){
			//Be sure to update country code below
			$(xml).find('THURSDAY').find('event').each(function(){
				var eid = $(this).attr('id'),
				    start = $(this).find("start").text(),
				    end = $(this).find("end").text(),
				    title = $(this).find("title").text(),
				    track = $(this).find("track").text(),
                    desc = $(this).find("description").text();
				$("<tr></tr>").addClass('parent').html("<td class=\"agTime\">" + start + "</td><td>&ndash;</td><td class=\"agTime\">" + end + "</td><td class=\"agTitle\"><h4>" + title + "</h4><p class='desc'>" + desc + "</p></td>").appendTo("#thursday tbody");
                
                $('p.desc:empty').addClass('noShow');
                
                
                $("<div class=\"agEvent\"></div>").html("<h3>" + title + "</h3><p><strong>" + start + " &ndash; " + end + "</strong></p><p>" + desc + "</p>").appendTo("#thurList");
			     });
			},
			error: function(){
				alert("An error occurred while processing XML file.");
			}

		});
			$.ajax({
			type: "GET",
			url: "agenda.xml",
			dataType: "xml",
			success:function(xml){
			//Be sure to update country code below
			$(xml).find('FRIDAY').find('event').each(function(){
                var eid = $(this).attr('id'),
				    start = $(this).find("start").text(),
                    end = $(this).find("end").text(),
				    title = $(this).find("title").text(),
				    track = $(this).find("track").text(),
                    desc = $(this).find("description").text();
				$("<tr></tr>").addClass("parent").html("<td class=\"agTime\">" + start + "</td><td>&ndash;</td><td class=\"agTime\">" + end + "</td><td class=\"agTitle\"><h4>" + title + "</h4><p class='desc'>" + desc + "</p></td>").appendTo("#friday tbody");
                
                $('p.desc:empty').addClass('noShow');
                
				$("<div class=\"agEvent\"></div>").html("<h3>" + title + "</h3><p><strong>" + start + " &ndash; " + end + "</strong></p><p>" + desc + "</p>").appendTo("#friList");
			});
			},
			error: function(){
				alert("An error occurred while processing XML file.");
			}
		});
                    
                $('tbody').on('click', 'tr.parent', function(){
                        var itemDesc = $(this).find('p.desc');
                        var plusMinus = $(this).find('.show-hide strong');
                        plusMinus.toggleClass('glyphicon-minus');
                    
                        itemDesc.slideToggle('5000');

                });
    
                

});
	</script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!--#include virtual="/acces/en/inc/althero.html" -->
<!--#include virtual="/acces/en/inc/nav.html" -->

<div class="main">
	<div class="mainInner">
  	<h1>Agenda</h1>
    
    <h2>Tuesday, December 8th</h2>
    <table id="thursday" class="agendaTable">
    	<thead>
            <tr>
              <th colspan="3">Time</th>
              <th class="agTitle">Title</th>
            </tr>
        </thead>
        
        <tbody>
            
            
        </tbody>
    </table>
    <div id="thurList" class="agendaListing">
    </div>

    <h2>Wednesday, December 9th</h2>
    <table id="friday" class="agendaTable">
    	<thead>
        <tr>
          <th colspan="3">Time</th>
          <th class="agTitle">Title</th>
        </tr>
      </thead>
    	<tbody>
      </tbody>
    </table>    
    <div id="friList" class="agendaListing">
    </div>

    <a href="http://act-certified-consultant-european-summit-2015.eventbrite.com" target="_blank"><button class="btn-lg">Register now</button></a>


  </div>
</div>

<!--#include virtual="/acces/en/inc/cta.html" -->

</asp:Content>
