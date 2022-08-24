class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.user_created.subject
  #
  def user_created
    @user = params[:user]
    
    @greeting = "Hi"
    attachments['forrentech.jpeg'] = File.read('app/assets/images/forrentech.jpeg')


    mail to: User.first.email, cc: User.all.pluck(:email), subject: "New Employeee Created"
  end
end
