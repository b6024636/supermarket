<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'manager.label', default: 'Manager')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-manager" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link controller="Manager" action="index">Show Manager</g:link></li>
 		<li><g:link controller="TeamLeader" action="index">Show Team Leaders</g:link></li>
 		<li><g:link controller="Employee" action="index">Show Employees</g:link></li>
 		<li><g:link controller="Team" action="index">Show Teams</g:link></li>
 		<li><g:link controller="Shift" action="index">Show Shifts</g:link></li>
 		<li><g:link controller="Task" action="index">Show Tasks</g:link></li>
                <li style='float:right;'><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li style='float:right;'><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-manager" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="manager" />
            <g:form resource="${this.manager}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.manager}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
