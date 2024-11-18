<html>
<head>
    <title>Student Response</title>
</head>
<body>
    Student name is confirmed: ${param.firstName} ${param.lastName}
    <br/><br/>
    
    ..... Display List of "Favorite Languages" ---->
    <ul>
        <%
        // Get the "favouriteLanguage" parameter values from the request
        String[] langs = request.getParameterValues("favoriteLanguage");

        // Check if any languages were selected
        if (langs != null && langs.length > 0) {
            // Loop through the languages and display them in a list
            for (String tempLang : langs) {
                out.println("<li>" + tempLang + "</li>");
            }
        } else {
            // If no languages were selected, display a default message
            out.println("<li>No languages selected.</li>");
        }
        %>
    </ul>
</body>
</html>
