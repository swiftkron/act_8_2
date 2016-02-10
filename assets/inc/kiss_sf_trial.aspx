<!-- ASP Vars -->
<%
Dim trial As String
trial = Request.QueryString("trial")
%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">

<script type="text/javascript">
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
_kmq.push(['record', 'Completed Trial Form', {'Trial Type': '<% response.write (trial) %>'}]);

</script>
