class ContactUsMailer < ActionMailer::Base
  
  def contact_us_email(name, from, message)
  	
  	@name = name
  	@message = message

  	mail(to: "david@timba.co", from: from, subject: 'Inquery from #{name}')

  end
end
