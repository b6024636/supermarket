<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'task.label', default: 'Task')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-task" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
        <div id="edit-task" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.task}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.task}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.task}" method="PUT">
                <g:hiddenField name="version" value="${this.task?.version}" />
                <fieldset class="form">
                    <f:all bean="task"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
