package com.GCATTERALL

class Manager {
String fullName
String userName
String password
String managerEmail
String office
String department

//static hasMany=[employees:Employee, teamLeaders:TeamLeader]

String toString()
{
	return "$fullName"
}

    static constraints = {
	fullName nullable:false, blank:false
	userName nullable:false, blank:false
	password nullable:false, blank:false
	managerEmail nullable:false, blank:false, email:true
	office nullable:false, blank:false
	department nullable:false, blank:false
    }
}
