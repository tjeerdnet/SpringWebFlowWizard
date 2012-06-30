<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" import="java.io.PrintWriter"%>

<html>
<body>
<h1 style="color: red">Something went wrong</h1>
	<pre>
	<%
        while (exception instanceof ServletException)
            exception = ((ServletException) exception).getRootCause();
        exception.printStackTrace(new PrintWriter(out));
    %>
	</pre>
</body>
</html>