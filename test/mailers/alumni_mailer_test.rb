require 'test_helper'

class AlumniMailerTest < ActionMailer::TestCase
  test 'welcome_email' do
    mail = AlumniMailer.welcome_email
    assert_equal 'Welcome email', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
