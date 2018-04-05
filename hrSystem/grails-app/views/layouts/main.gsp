<!doctype html>
<html lang="en" class="no-js">
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="trolly.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
<body>

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="">
		    <asset:image src="trolly.svg" alt="Trolly Logo"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
 		    <li><g:link controller="Manager" action="index">Show Manager</g:link></li>
 		    <li><g:link controller="TeamLeader" action="index">Show Team Leaders</g:link></li>
 		    <li><g:link controller="Employee" action="index">Show Employees</g:link></li>
 		    <li><g:link controller="Team" action="index">Show Teams</g:link></li>
 		    <li><g:link controller="Shift" action="index">Show Shifts</g:link></li>
 		    <li><g:link controller="Task" action="index">Show Tasks</g:link></li>		    	
                </ul>
            </div>
        </div>
	<g:loginToggle/>
    </div>

    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
