package com.GCATTERALL

class Employee {

String fullName
Date dateOfBirth
String residence
Double hourlyRate
String employeeID
Date dateEmployed
String taxCode
String contract
Manager manager
TeamLeader teamLeader
Shift shift

static hasMany=[teams:Team, tasks:Task]

static belongsTo=[Team, Manager]

String toString()
{
	return "$employeeID, $fullName"
}


    static constraints = {
	fullName blank:false, nullable:false
	dateOfBirth blank:false, nullable:false
	residence blank:false, nullable:false
	hourlyRate blank:false, nullable:false
	employeeID blank:false, nullable:false, unique:true
	dateEmployed blank:false, nullable:false
	taxCode blank:false, nullable:false, maxSize:5
	contract blank:false, nullable:false, inList:["Full-Time", "Part-Time"]
	manager blank:true, nullable:true
	teamLeader blank:true, nullable:true
	shift blank:true, nullable:true
	teams blank:true, nullable:true
    }
}
