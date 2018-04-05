<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'manager.label', default: 'Manager')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-manager" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link controller="Manager" action="index">Show Manager</g:link></li>
 		<li><g:link controller="TeamLeader" action="index">Show Team Leaders</g:link></li>
 		<li><g:link controller="Employee" action="index">Show Employees</g:link></li>
 		<li><g:link controller="Team" action="index">Show Teams</g:link></li>
 		<li><g:link controller="Shift" action="index">Show Shifts</g:link></li>
 		<li><g:link controller="Task" action="index">Show Tasks</g:link></li>
                <li style='float:right;'><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
	<!--<div class=" col-md-12">
		<h3>Managers</h3>
		<button type="button" class="btn btn-default">
			<g:link controller="Manager" action="index">Show Manager</g:link>
		</button>
	</div>-->
        <div id="list-manager" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${managerList}" />

            <div class="pagination">
                <g:paginate total="${managerCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
