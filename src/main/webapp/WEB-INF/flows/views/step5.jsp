<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard" %>

<head>
    <title>Step 5</title>
</head>

<div class="breadcrumb"><wizard:breadcrumb/></div>

<div class="wizardContent">
    <h2>Overview</h2>
    <p>Overview of personal data collected in the previous steps of the wizard:<p>
    <table>
        <tbody>
            <tr>
                <td><spring:message code="person.name"/>:</td>
                <td>${person.name}</td>
            </tr>
            <tr>
                <td><spring:message code="person.age"/>:</td>
                <td>${person.age}</td>
            </tr>
            <tr>
                <td><spring:message code="person.address"/>:</td>
                <td>${person.address}</td>
            </tr>
            <tr>
                <td><spring:message code="person.place"/>:</td>
                <td>${person.place}</td>
            </tr>
            <tr>
                <td><spring:message code="person.comment"/>:</td>
                <td>${person.comment}</td>
            </tr>
        </tbody>
    </table>
    <wizard:wizardform modelAttribute="person" finish="true">
    </wizard:wizardform>
</div>