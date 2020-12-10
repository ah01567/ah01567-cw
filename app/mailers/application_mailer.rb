class ApplicationMailer < ActionMailer::Base
  # Adding a team contacting email, where we recieve student s enquiries, to mailer
  default to: "office@admission.com", from: "office@admission.com"
  layout 'mailer'
end
