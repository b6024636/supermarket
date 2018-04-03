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

    static constraints = {
	fullName blank:false, nullable:false
	dateOfBirth blank:false, nullable:false
	residence blank:false, nullable:false
	hourlyRate blank:false, nullable:false
	employeeID blank:false, nullable:false, unique:true
	dateEmployed blank:false, nullable:false
	taxCode blank:false, nullable:false, maxSize:5
	contract blank:false, nullable:false
    }
}
