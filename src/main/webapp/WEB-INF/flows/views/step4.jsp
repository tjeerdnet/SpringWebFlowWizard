<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard" %>

<head>
    <title>Step 4</title>
</head>

<div class="breadcrumb"><wizard:breadcrumb/></div>

<div class="wizardContent">
    <h2>Title 4</h2>
    <wizard:wizardform modelAttribute="person">
        <table>
            <tbody>
            <tr>
                <td>
                    <label for="place"><spring:message code="person.place"/></label></td>
                <td>
                    <form:input path="place" id="place" cssErrorClass="validationErrorField" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="comment"><spring:message code="person.comment"/></label></td>
                <td>
                    <form:input path="comment" id="comment" cssErrorClass="validationErrorField" />
                </td>
            </tr>
            </tbody>
        </table>
    </wizard:wizardform>
</div>