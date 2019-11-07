<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- static includes: content changes infrequently -->
<%@ include file="copyright.txt" %>
<p/>

<!-- dynamic include: content changes a lot -->
<jsp:include page="updates.txt"/>
<p/>

<!-- must use static includes if it is got java code in it that we want to use -->
<%@ include file="variables.jsp" %>
<%=name %>
<p/>

<!-- must use include jsp tag if you dont know what file you want till run time -->
<% String id = request.getParameter("id"); %>

<% if(id == null) { %>
	<jsp:include page="notFoundFile.html"></jsp:include>
<% } else { %>
	<jsp:include page="idFound.html"></jsp:include>
<% } %>
</body>
</html>