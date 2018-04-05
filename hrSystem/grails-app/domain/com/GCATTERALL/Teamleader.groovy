package com.GCATTERALL

class TeamLeader {
String fullName
String department
String employeeID
String sectionName
Long officePhone
String leaderEmail
String password
Manager manager
Team team


String toString()
{
	return "$employeeID, $fullName"
}

    static constraints = {
	fullName blank:false, nullable:false
	department blank:false, nullable:false
	employeeID blank:false, nullable:false, unique:true
	sectionName blank:false, nullable:false
	officePhone blank:false, nullable:false
	leaderEmail blank:false, nullable:false, email:true
	password blank:false, nullable:false
	manager blank:true, nullable:true
	team blank:true, nullable:true
    }
}
