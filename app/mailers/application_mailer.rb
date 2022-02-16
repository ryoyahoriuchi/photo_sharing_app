class ApplicationMailer < ActionMailer::Base
  default from: ENV[MAILADRESS]#'appleorange0720@gmail.com'
  layout 'mailer'
end
