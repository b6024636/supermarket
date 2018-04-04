package com.GCATTERALL

class Task {

String taskName
int numberOfPeople
String sectionName
String department
String timeRequired
String description
Boolean taskCompleted

static hasMany=[teams:Team, employees:Employee, shifts:Shift]

static belongsTo=[Team, Employee, Shift]

String toString()
{
	return "$taskName - $sectionName"
}

    static constraints = {
	taskName blank:false, nullable:false
	numberOfPeople blank:false, nullable:false
	sectionName blank:false, nullable:false
	department blank:false, nullable:false
	timeRequired blank:false, nullable:false
	description blank:false, nullable:false, widget:'textarea'
	taskCompleted blank:false, nullable:false
    }
}
