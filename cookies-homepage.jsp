<html>
<body>
<h3>Training portal</h3>
<!-- read the favourite programing language cookies -->
<% //default cookie if there are no cookies 
String favLang ="Java";
//get the cookies from the browser request
Cookie[] theCookie=request.getCookies();
//find our favourite language cookie
if (theCookie!=null){
	for(Cookie tempCookie:theCookie){
		if("myApp.favouriteLanguage".equals(tempCookie.getName())){
			favLang=tempCookie.getValue();
		break;
	}
	}
}
%>
<!-- now Show the personalized page .... use the "favLang" variable -->
<!-- Show new books for this language-->
<h4>New books for <%=favLang %></h4>
<ul>
<li>blah blah blah</li>
<li>blah blah blah</li>
</ul>
<h4>Latest News Report for<%=favLang %></h4>
<ul>
<li>blah blah blah....</li>
</ul>
<h4>Hot Jobs for <%=favLang %></h4>
<ul>
<li>blah blah blah</li>
</ul>
<hr>
<a href="cookies-personlize-form.html">Personlize this page</a>
</body>
</html>