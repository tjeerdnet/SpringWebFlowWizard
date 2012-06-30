<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tag body-content="empty"%>

<ul class="breadcrumbtrail">
    <c:forEach items="${breadcrumbtrail}" var="breadcrumb">
        <c:set var="status" value=""/>
        <c:if test="${breadcrumb.active}">
            <c:set var="status" value="active"/>
        </c:if>
        <li><a href="#" title="${breadcrumb.label}" class="${status}">${breadcrumb.label}</a></li>
    </c:forEach>
</ul>