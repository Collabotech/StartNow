class ApplicationMailer < ActionMailer::Base
  def account_activation(user)
    @user = user
    mail to: user.email, Subject: "User Activation"
  end
end
