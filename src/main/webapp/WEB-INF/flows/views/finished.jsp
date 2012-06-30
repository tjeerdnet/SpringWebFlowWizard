<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard"%>
<spring:url var="retryUrl" value="/wizard"/>

<title>Finished</title>

<div class="breadcrumb"><wizard:breadcrumb/></div>

<div class="wizardContent">
	Thanks for using the wizard, you reached the last page. Click <a href="${retryUrl}">here</a> to try again.
	<wizard:wizardform cancel="false" previous="false" next="false">
	</wizard:wizardform>
</div>