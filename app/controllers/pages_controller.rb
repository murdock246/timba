class PagesController < ApplicationController
	
  def home
  end

  def open_source
  end
  
  def blog
  end

  def portfolio
  end

  def contact
  end

  def thanks
  end

  def web_design
  end

  def game_development
  end
  

	def send_contact_mail
		name = params[:name]
		mail = params[:email]
		message = params[:message]
		ContactUsMailer.contact_us_email(name, mail, message).deliver
    redirect_to :thanks
  end
end