class ApplicationMailer < ActionMailer::Base
  default from: 'appleorange0720@gmail.com'#ENV['MAILADRESS']
  layout 'mailer'
end
