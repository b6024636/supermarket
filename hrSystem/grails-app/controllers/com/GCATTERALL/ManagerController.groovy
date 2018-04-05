package com.GCATTERALL

class ManagerController {

	def scaffold = Manager
	def login(){
	}

	def validate(){

		def user = Manager.findByUserName(params.userName)

		if(user && user.password == params.password){
	
			session.user = user
	
			render view:'index'
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


