<%@ page import="java.util.*" %>
<html>
<body>
<!-----//1create html form---->
<form action="to-do-list-demo.jsp">
Add new Item :<input type ="text" name="theItem"/>
<input type ="submit" value="Submit"/>
</form>
<br/>
Entered item:<%=request.getParameter("theItem") %>
<!-----2 add new item----->
<%
List<String> items =(List<String>) session.getAttribute("myTodolist");
//if the to Do items doesn't exists,then create a new one 
if (items==null){
	items=new ArrayList<String>();
	session.setAttribute("myTodolist", items); 
	}

//see if there is form data to add 
String theItem=request.getParameter("theItem");
boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());

if (theItem!=null&&(!theItem.trim().equals(""))){
items.add(theItem);
}
%>
<!-----3show list----->
<hr>
<b>TO List Item:</b>

<br/>
<ol>
<%
for(String temp: items){
	out.println("<li>"+temp+"</li>");
}
%>
</ol>
</body>
</html>
