<html xmlns="http://www.w3.org/1999/xhtml" xmlns:l="http://www.linkorb.com/linkorbhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<head>
{literal}
<style>
td.section {
	font-weight: bold;
}
</style>
<script>
function subst() {
  var vars={};
  var x=document.location.search.substring(1).split('&');
  for (var i in x) {var z=x[i].split('=',2);vars[z[0]] = unescape(decodeURIComponent(z[1]));}
  var x=['frompage','topage','page','webpage','section','subsection','subsubsection'];
  for (var i in x) {
    var y = document.getElementsByClassName(x[i]);
    for (var j=0; j<y.length; ++j) y[j].textContent = vars[x[i]];
  }
}
</script>
{/literal}
</head>
<body style="border:0; margin: 0;" onload="subst()">
  <table style="border-top: 1px solid black; width: 100%; margin-top: 10;">
    <tr>
      <td class="section"></td>
      <td style="text-align:right">
        <span class="page"></span> / <span class="topage"></span>
      </td>
    </tr>
  </table>
  </body></html>
