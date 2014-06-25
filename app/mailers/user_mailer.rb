class UserMailer < ActionMailer::Base
  default from: "contact@humantour.org"

  def welcome_email(email)
    @email = email 
    mail(to: @user.email, subject: 'Successfully subscribed to humantour.org!')
  end
  
  def send_interview(post)
    @post = post 
    Email.each do |email|
      mail(to: |email|.email, subject:'Humantour Interviews: ' + @post.title) 
    end
  end
end
