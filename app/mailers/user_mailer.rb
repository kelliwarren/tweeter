class UserMailer < ActionMailer::Base
  layout 'mailer'
  default from: "from@example.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Tweeter')
  end

end
