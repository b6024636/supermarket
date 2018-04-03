package com.GCATTERALL

class Team {

String teamName
int numberOfEmployees
String sectionName
String description

static hasMany = [shifts:Shift, tasks:Task, employees:Employee]

static belongsTo = [Shift, Employee, Task]

String toString()
{
	return "$teamName - $sectionName"
}

    static constraints = {
	teamName blank:false, nullable:false
	numberOfEmployees blank:false, nullable:false
	sectionName blank:false, nullable:false
	description blank:false, nullable:false, widget:'textarea'
    }
}
