<html>
<head><title>confirmation</title></head>
<%
//read data
String favLang=request.getParameter("fovouriteLanguage");
//create data
Cookie theCookie=new Cookie("myapp.favouriteLanguage",favLang);
//set of life Span
theCookie.setMaxAge(60*60*24*365);
//send the cookie to browser
response.addCookie(theCookie);
%>
<body>
Thanks we set your favourite language to:${param.favoriteLanguage};
<br/><br/>
<a href="cookies-homepage.jsp">return home page</a>
</body>
</html>