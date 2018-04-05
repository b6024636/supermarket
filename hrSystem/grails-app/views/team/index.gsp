<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'team.label', default: 'Team')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-team" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
        <div id="list-team" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${teamList}" />

            <div class="pagination">
                <g:paginate total="${teamCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
