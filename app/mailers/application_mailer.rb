class ApplicationMailer < ActionMailer::Base
  default to: "office@admission.com", from: "office@admission.com"
  layout 'mailer'
end
