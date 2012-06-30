<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard" %>

<head>
    <title>Step 2</title>
</head>

<div class="breadcrumb"><wizard:breadcrumb/></div>

<div class="wizardContent">
    <h2>Title 2</h2>
    <wizard:wizardform modelAttribute="person">
        <table>
            <tbody>
            <tr>
                <td>
                    <label for="age"><spring:message code="person.age"/></label></td>
                <td>
                    <form:input path="age" id="age" cssErrorClass="validationErrorField" />
                </td
            </tr>
            </tbody>
        </table>
    </wizard:wizardform>
</div>