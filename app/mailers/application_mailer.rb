class ApplicationMailer < ActionMailer::Base
  default from: "freemeet2017@gmail.com",
          bcc: "freemeet2017@gmail.com"
  layout 'mailer'
end
