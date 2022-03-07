# Preview all emails at http://localhost:3000/rails/mailers/news_letter_mailer
class NewsLetterMailerPreview < ActionMailer::Preview
  def newsletter_email
    newsletter = { subject: 'Getting started', message: 'my cool email is here' }
    NewsLetterMailer.with(newsletter: newsletter).newsletter_email
  end
end
