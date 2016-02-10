<!-- ASP Vars -->
<%
Dim acp1 As String
Dim acp1_v As String
Dim acp2 As String
Dim acp2_v As String
Dim acp3 As String
Dim acp3_v As String
Dim ace As String
Dim email As String

acp1 = Request.QueryString("acp1")
acp1_v = Request.QueryString("acp1_v")
acp2 = Request.QueryString("acp2")
acp2_v = Request.QueryString("acp2_v")
acp3 = Request.QueryString("acp3")
acp3_v = Request.QueryString("acp3_v")
ace = Request.QueryString("ace")
email = Request.QueryString("email")
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">

<script type="text/javascript">
// Define vars to be used in script 
var acp1 = "<% response.write (acp1) %>";
var acp1_v = "<% response.write (acp1_v) %>";
var acp2 = "<% response.write (acp2) %>";
var acp2_v = "<% response.write (acp2_v) %>";
var acp3 = "<% response.write (acp3) %>";
var acp3_v = "<% response.write (acp3_v) %>";
var ace = "<% response.write (ace) %>";
var email = "<% response.write (email) %>";
// TEST 
//document.write(acp1+" = "+acp1_v+"<br>"+acp2+" = "+acp2_v+"<br>"+acp3+" = "+acp3_v+"<br>Event = "+ace);
var _kmq = _kmq || [];
var _kmk = _kmk || 'fb3b6dd55e5635b7f5eb80ac69d927bd54d760b6';
function _kms(u){
  setTimeout(function(){
    var d = document, f = d.getElementsByTagName('script')[0],
    s = d.createElement('script');
    s.type = 'text/javascript'; s.async = true; s.src = u;
    f.parentNode.insertBefore(s, f);
  }, 1);
}
_kms('//i.kissmetrics.com/i.js');
_kms('//doug1izaerwt3.cloudfront.net/' + _kmk + '.1.js');
// Identify by email
_kmq.push(['identify', email]);
// record an Event
//_kmq.push(['record', newevent}]);
// set a Property
//_kmq.push(['set', {'Sid': sid}]);
// record an Event AND set a Property
// For some reason, script won't accept vars defined above as Property names, thus they are redefined here
_kmq.push(['record', ace, {'<% response.write (acp1) %>': acp1_v, '<% response.write (acp2) %>': acp2_v, '<% response.write (acp3) %>': acp3_v}]);

</script>
