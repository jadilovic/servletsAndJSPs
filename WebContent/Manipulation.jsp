<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% for(int i = 0; i < 5; i++) { %>
<p>This is text from the JSP Manipulation file num <%=i %></p>
<% } %>

<% String name = request.getParameter("name");
if(name == null) {%>
<strong>No parameter was entered</strong>
<% } else { %>
<strong>Entered name is: <%=name %> </strong>
<% } %>
</body>
</html>