<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="wizard" tagdir="/WEB-INF/tags/wizard"%>
<spring:url value="/wizard"/>

<div class="wizardContent">
	<h2>Spring WebFlow Wizard :: error</h2>

	<p>Something went wrong, please click
		<a href="<spring:url value='/wizard'/>">here</a> to restart the wizard.</p>

	<pre>
	    Contact details
	</pre>
</div>