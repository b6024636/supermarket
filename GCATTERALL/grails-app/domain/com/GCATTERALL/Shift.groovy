package com.GCATTERALL

class Shift {

String timeOfDay
String dayOfWeek
int numberOfHours
String startingTime

    static constraints = {
	timeOfDay blank:false, nullable:false, inList:["Morning", "Afternoon", "Evening", "Night"]
	dayOfWeek blank:false, nullable:false, inList:["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
	numberOfHours blank:false, nullable:false, max:12
	startingTime blank:false, nullable:false
    }
}
