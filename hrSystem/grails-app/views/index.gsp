<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>HR System</title>
    <asset:stylesheet src="home.css"/>
</head>
<body>

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Architecture Market</h1>

	    <!--<div class="container">
		    <div class="row">
			<div class=" col-md-2 classNav">
				<h3>Managers</h3>
				<button type="button" class="btn btn-default">
					<g:link controller="Manager" action="index">Show Manager</g:link>
				</button>
			</div>
			<div class="col-md-2 classNav">
				<h3>Team Leaders</h3>
				<button type="button" class="btn btn-default">
					<g:link controller="TeamLeader" action="index">Show Team Leaders</g:link>
				</button>
			</div>
			<div class="col-md-2 classNav">
				<h3>Employees</h3>
				<button type="button" class="btn btn-default">
					<g:link controller="Employee" action="index">Show Employees</g:link>
				</button>
			</div>
			<div class="col-md-2 classNav">
				<h3>Teams</h3>
				<button type="button" class="btn btn-default">
					<g:link controller="Team" action="index">Show Teams</g:link>
				</button>
			</div>	
			<div class="col-md-2 classNav">
				<h3>Shifts</h3>
				<button type="button" class="btn btn-default">
					<g:link controller="Shift" action="index">Show Shifts</g:link>
				</button>
			</div>	
			<div class="col-md-2 classNav">
				<h3>Tasks</h3>
				<button type="button" class="btn btn-default">
					<g:link controller="Task" action="index">Show Tasks</g:link>
				</button>
			</div>					
		    </div>
	    </div>
	<!--
            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>-->
        </section>
    </div>

</body>
</html>
