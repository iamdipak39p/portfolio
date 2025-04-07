class ContactMailer < ApplicationMailer
	def contact_message(name, email, message)
	    @name = name
	    @email = email
	    @message = message
	    
	    # Replace with your email
	    mail(to: "your-email@example.com", from: email, subject: "Portfolio Contact from #{name}")
	end
end
