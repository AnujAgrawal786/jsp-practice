<%@ page import="java.net.URLEncoder" %>
<html>
<head><title>confirmation</title></head>
<%
//read data
String favLang=request.getParameter("favoriteLanguage");
//encode cookie data... handle case of languages with spaces in them
favLang= URLEncoder.encode(favLang,"UTF-8");
//create data
Cookie theCookie=new Cookie("myApp.favouriteLanguage",favLang);
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