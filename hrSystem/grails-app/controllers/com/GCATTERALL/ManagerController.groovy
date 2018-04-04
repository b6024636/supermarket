package com.GCATTERALL

class ManagerController {

	def scaffold = Manager
		def login(){}

		def validate(){

			def user = Managers.findByUsername(params.username)

			if(user && user.password == params.password){
	
				session.user = user
	
				render view:'home'
			}
			else{
				flash.message = "Invalid username and password."

				render view:'login'

			}

		}

		def logout = {
			session.user = null

			redirect(uri:'/')
		}
}


