<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ tag body-content="scriptless" %>
<%@ attribute name="modelAttribute" required="false" %>
<%@ attribute name="action" required="false" type="java.lang.String" %>
<%@ attribute name="cancel" required="false" type="java.lang.Boolean" %>
<%@ attribute name="previous" required="false" type="java.lang.Boolean" %>
<%@ attribute name="next" required="false" type="java.lang.Boolean" %>
<%@ attribute name="finish" required="false" type="java.lang.Boolean" %>
<%@ attribute name="showValidationErrors" required="false" type="java.lang.Boolean" %>

<head>
	<script type="text/javascript">

		/*
		 * Submits the wizard form.
		 */
		function submitWizardForm() {
			$('#wizardForm').submit();
		}

		/*
		 * Disable the enter/return key.
		 */
		function stopRKey(evt) {
			var evt  = (evt) ? evt : ((event) ? event : null);
			var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
			if ((evt.keyCode == 13) && (node.type=="text")) { return false; }
		}

		document.onkeypress = stopRKey;

	</script>
</head>

<c:choose>
	<c:when test="${empty action}">
		<c:set var="formId" value="wizardForm" scope="page" />
	</c:when>
	<c:otherwise>
		<c:set var="formId" value="${action}" scope="page" />
	</c:otherwise>
</c:choose>

<form:form id="${formId}" name="${formId}" modelAttribute="${modelAttribute}">

	<c:if test="${empty showValidationErrors}">

		<spring:hasBindErrors name="${modelAttribute}">
			<c:if test="${modelAttribute != null}">
				<spring:bind path="*">
					<div class="validationError">
						<spring:message code="wizard.validation.error"/>
						<ul class="errorlist">
							<c:forEach items="${status.errorMessages}" var="error">
								<li>${error}</li>
							</c:forEach>
						</ul>
					</div>
				</spring:bind>
			</c:if>
		</spring:hasBindErrors>

	</c:if>

	<jsp:doBody/>
	<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
	<c:choose>
		<c:when test="${empty action}">
			<input type="hidden" name="_eventId_submitNext" value="_eventId_submitNext"/>
		</c:when>
		<c:otherwise>
			<input type="hidden" name="_eventId" value="${action}"/>
		</c:otherwise>
	</c:choose>
</form:form>

<c:if test="${empty action}">
	<div class="navigatorButtons">
		<c:if test="${cancel || empty cancel}">
			<a href="${flowExecutionUrl}&_eventId=submitCancel" onclick="return confirm('<spring:message code="wizard.label.cancel.confirm" />')"
			   title="<spring:message code="wizard.label.cancel" />">
				<span><spring:message code="wizard.label.cancel" /></span>
			</a>
		</c:if>
		<c:if test="${previous || empty previous}">
			<a href="${flowExecutionUrl}&_eventId=submitPrevious" title="<spring:message code="wizard.label.previous" />">
				<span><spring:message code="wizard.label.previous" /></span>
			</a>
		</c:if>
		<c:choose>
			<c:when test="${finish}">
				<a href="javascript:void(0);" onclick="submitWizardForm();" title="<spring:message code="wizard.label.finish" />">
					<span><spring:message code="wizard.label.finish" /></span>
				</a>
			</c:when>
			<c:otherwise>
				<c:if test="${next || empty next}">
					<a href="javascript:void(0);" onclick="submitWizardForm();" title="<spring:message code="wizard.label.next" />">
						<span><spring:message code="wizard.label.next" /></span>
					</a>
				</c:if>
			</c:otherwise>
		</c:choose>

	</div>
</c:if>
