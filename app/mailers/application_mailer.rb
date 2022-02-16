class ApplicationMailer < ActionMailer::Base
  default from: 'ENV[MAILADRESS]'
  layout 'mailer'
end
