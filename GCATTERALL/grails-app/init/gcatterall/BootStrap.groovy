package gcatterall

class BootStrap {

    def init = { servletContext ->
	//Manager
	def manSteveCross= new com.GCATTERALL.Manager(
		fullName:'Steve Crossbar',
		userName:'scross',
		password:'secret2018',
		managerEmail:'scross@email.com',
		office:'B1-900',
		department:'Grocery, Electronics, Clothing'
		).save()

	def manJaneCross= new com.GCATTERALL.Manager(
		fullName: 'Jane Crossbar',
		userName:'jcross',
		password:'jecret2018',
		managerEmail:'jcross@email.com',
		office:'B1-900',
		department:'Grocery, Electronics, Clothing'
		).save()
	
	//TeamLeader
	def tlJohn = new com.GCATTERALL.TeamLeader(
		fullName: 'John Leadfarmer',
		department: 'Gardening',
		employeeID: 'GarJL',
		sectionName: 'Trees',
		officePhone: '01111777',
		leaderEmail: 'jleadfarmer@email.com',
		password: 'secret2018',
		manager:manSteveCross,
		).save()

	def tlJoane = new com.GCATTERALL.TeamLeader(
		fullName: 'Joane Leadfarmer',
		department: 'Meat',
		employeeID: 'MeatJL',
		sectionName: 'Beef',
		officePhone: '01112777',
		leaderEmail: 'jleadfarmer@email.com',
		password: 'secret2018',
		manager:manJaneCross,
		).save()

	//Shift
	def sftMorn = new com.GCATTERALL.Shift(
		timeOfDay: 'Morning',
		dayOfWeek: 'Thursday',
		numberOfHours: 6,
		startingTime: '6:00am'
		).save()

	def sftAfternoon = new com.GCATTERALL.Shift(
		timeOfDay: 'Afternoon',
		dayOfWeek: 'Sunday',
		numberOfHours: 6,
		startingTime: '8:00pm'
		).save()

	//Employee
	def empCraig = new com.GCATTERALL.Employee(
		fullName: 'Craig David',
		dateOfBirth: new Date('18/10/1986'),
		residence: 'Manchester',
		hourlyRate: 9.55,
		employeeID: 'CD86',
		dateEmployed: new Date('26/02/2018'),
		taxCode: 'TX345',
		contract: 'Full-Time',
		manager:manSteveCross,
		teamLeader:tlJoane,
		shift:sftAfternoon
		).save(failOnError:true)

	def empCharlie = new com.GCATTERALL.Employee(
		fullName: 'Charlie David',
		dateOfBirth: new Date('18/10/1986'),
		residence: 'Poynton',
		hourlyRate: 9.55,
		employeeID: 'CD56',
		dateEmployed: new Date('26/02/2008'),
		taxCode: 'TX345',
		contract: 'Part-Time',
		manager:manSteveCross,
		teamLeader:tlJohn,
		shift:sftAfternoon
		).save(failOnError:true)

	//Team
	def tmGard = new com.GCATTERALL.Team(
		teamName:'Gardening',
		numberOfEmployees: 10,
		sectionName: 'Gardining',
		description: 'Maintaining gardens'
		).save()
	
	def tmLoading = new com.GCATTERALL.Team(
		teamName:'Loading',
		numberOfEmployees: 3,
		sectionName: 'Bakery',
		description: 'Restocking sausage rolls'
		).save()

	//Task
	def taskReplenish = new com.GCATTERALL.Task(
		taskName: 'Replenishing',
		numberOfPeople: 2,
		sectionName: 'Floral',
		department: 'Gardening',
		timeRequired: '1 Hour',
		description: 'Replenishing flowers',
		taskCompleted: false
		).save()

	def taskClean = new com.GCATTERALL.Task(
		taskName: 'Cleaning',
		numberOfPeople: 4,
		sectionName: 'Shop Floor',
		department: 'Cleaning Staff',
		timeRequired: '4 Hours',
		description: 'Clean the supermarket',
		taskCompleted: true
		).save()

	

	/*tmGard.addToEmployee(empCraig)
	tmLoading.addToEmployee(empCharlie)*/
    }
    def destroy = {
    }
}
