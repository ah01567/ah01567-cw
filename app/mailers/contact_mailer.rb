class ContactMailer < ApplicationMailer
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
