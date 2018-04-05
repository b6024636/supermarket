package com.GCATTERALL

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class EmployeeSpec extends Specification implements DomainUnitTest<Employee> {

    def setup() {
    }

    def cleanup() {
    }

    void calculateDailyWage() {
        when: "Employee has id and hourly rate"
	def newEmp = new Employee(employeeID: 'ID123', hourlyRate: 7.75)
	then: "Calculate daily wage function will work out their daily rate"
	newEmp.calculateDailyWage() == 62
    }
}
