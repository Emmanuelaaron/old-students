# Preview all emails at http://localhost:3000/rails/mailers/alumni_mailer
class AlumniMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/alumni_mailer/welcome_email
  def welcome_email
    new_alumni = Alumni.new(first_name: "Sonibil", 
                            last_name: "isabirye",
                            email: "sonibilema@gmail.com",
                            course: "Diploma in Water Engineering",
                            employed: "yes",
                            employer: "i3c",
                            own_company: "yes",
                            phonecontact: "0775743815"
                            )
    AlumniMailer.with(alumni: new_alumni).welcome_email
  end
end
