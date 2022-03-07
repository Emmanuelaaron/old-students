class NewsLetterMailer < ApplicationMailer
  def newsletter_email
    @newsletter = params[:newsletter]

    mail subject: @newsletter[:subject],
         bcc: Alumni.pluck(:email)
  end
end
