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
  		message = params[:message]
  		ContactUsMailer.contact_us_email(name, mail, message).deliver
      redirect_to :home
    end
end