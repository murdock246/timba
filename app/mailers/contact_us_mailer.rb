class ContactUsMailer < ActionMailer::Base
  default to: "david@timba.co"

  def contact_us_email(name, from, message)
  	@name = name
  	@message = message

  	mail(from: from, subject: 'Inquery from #{name}')

  end
end
