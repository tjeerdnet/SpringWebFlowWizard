<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard" %>

<head>
	<title>Step 1</title>
</head>

<div class="breadcrumb"><wizard:breadcrumb/></div>

<div class="wizardContent">
    <h2>Title 1</h2>
	<wizard:wizardform previous="false" modelAttribute="person">
        <table>
            <tbody>
            <tr>
                <td>
                    <label for="name"><spring:message code="person.name"/></label></td>
                <td>
                    <form:input path="name" id="name" cssErrorClass="validationErrorField" />
                </td
            </tr>
            </tbody>
        </table>
	</wizard:wizardform>
</div>