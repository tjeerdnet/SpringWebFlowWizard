<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard" %>

<head>
    <title>Step 3</title>
</head>

<div class="breadcrumb"><wizard:breadcrumb/></div>

<div class="wizardContent">
    <h2>Title 3</h2>
    <wizard:wizardform modelAttribute="person">
        <table>
            <tbody>
            <tr>
                <td>
                    <label for="address"><spring:message code="person.address"/></label></td>
                <td>
                    <form:input path="address" id="address" cssErrorClass="validationErrorField" />
                </td
            </tr>
            </tbody>
        </table>
    </wizard:wizardform>
</div>