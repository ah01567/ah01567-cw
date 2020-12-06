# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
   ContactMailer.contact_email("Ahmed@gmail.com", "Ahmed Henine", "1234567890", "UK", "Surrey University", @message = "Hi, its me")
  end
end
