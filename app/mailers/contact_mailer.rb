class ContactMailer < ApplicationMailer
  # Method takes parameters from the contact page
  # and generates them while recieving an enquiry from a student
  # on the mailer. 
  def contact_email(email, name, telephone, country, university_name, message)
    @email = email
    @name = name
    @telephone = telephone
    @country = country
    @university_name = university_name
    @message = message

    mail cc: @email
  end
 end
