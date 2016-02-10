    <!-- ASP Vars -->
    <%
    Dim regLang As String
    regLang = Request.QueryString("regLang")
    %>
    
    <script type="text/javascript">
    var regLang = "<% response.write (regLang) %>";
    //alert("<% response.write (regLang) %>");
    
    if ((!regLang) || (regLang == "")){
    
     var userLang = navigator.language || navigator.userLanguage;
     //alert ("The language is: " + userLang);
     
       // --- UK Version --- //
       if (
       (userLang == "en-GB") ||
       (userLang == "en-IE") ||
       (userLang == "en-ZA") ||
       (userLang == "ga") 
       ){
         location.href = "/en-uk/";
       }
       // --- DE Version --- //
       if (
       (userLang == "de") ||
       (userLang == "de-DE") ||
       (userLang == "de-AT") ||
       (userLang == "de-LI") ||
       (userLang == "de-LU") ||
       (userLang == "de-CH")
       ){
         location.href = "/de-de/";
       }
       // --- FR Version --- //
       if (
       (userLang == "fr") ||
       (userLang == "fr-FR") ||
       (userLang == "fr-BE") ||
       (userLang == "fr-CA") ||
       (userLang == "fr-LU") ||
       (userLang == "fr-MC") ||
       (userLang == "fr-CH")
       ){
         location.href = "/fr-fr/";
       }
    
    }
    
    else {
      // Do nothing
    }
    </script>