class AlumniMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.alumni_mailer.welcome_email.subject
  #
  def welcome_email
    @alumni = params[:alumni]
    mail to: @alumni.email,
         subject: 'Welcome to UTC-Kyema Alumni Association!'
  end
end
