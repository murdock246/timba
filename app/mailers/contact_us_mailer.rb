class ContactUsMailer < ActionMailer::Base
  
  def contact_us_email(name, from, message)
  	@name = name
  	@message = message

  	mail(to: 'ivan@timba.co', from: from, subject: "Inquiry from #{name}")

  end
end
