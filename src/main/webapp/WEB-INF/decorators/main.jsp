<%@ page contentType="text/html; charset=iso-8859-9" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<%@ taglib prefix="decorator"
           uri="http://www.opensymphony.com/sitemesh/decorator" %>
<html>
<head>
    <title><decorator:title default="Wizard"/></title>
    <spring:url value="/resources/css/wizard.css" var="css_wizard"/>
    <spring:url value="/resources/css/decorator.css" var="css_decorator"/>

    <spring:url value="/resources/js/jquery-1.7.1.min.js" var="jquery"/>

    <link rel="stylesheet" href="${css_wizard}" type="text/css" media="screen, projection">
    <link rel="stylesheet" href="${css_decorator}" type="text/css" media="screen, projection">

    <script type="text/javascript" src="${jquery}"></script>

    <spring:url var="imageResourcePath" value="/resources/images" scope="session"/>
    <decorator:head/>
</head>
<body>
<%@ include file="includes/header.jsp" %>
<decorator:body/>
<%@ include file="includes/footer.jsp" %>
</body>
</html>