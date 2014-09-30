class PagesController < ApplicationController
	def home
  	end

  	def contact
  		
  	end

  	def blog
  	end

  	def portfolio
  	end 	

  	def send_contact_mail
  		name = params[:name]
  		mail = params[:email]
  		message = [:message]
  		


  		UserMailer.welcome_email(@user).deliver


  	end
end