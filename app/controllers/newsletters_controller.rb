class NewslettersController < ApplicationController
  before_action :authenticate_user!

  def new; end

  def send_newsletter
    @newsletter = newsletter_params
    NewsLetterMailer.with(newsletter: @newsletter).newsletter_email.deliver_now
    redirect_to newsletter_path, notice: 'Message sent to all alumni'
  end

  private

  def newsletter_params
    params['newsletter'].permit(
      :subject,
      :message
    )
  end
end
