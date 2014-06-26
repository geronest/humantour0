class UserMailer < ActionMailer::Base
  default from: "contact@humantour.org"

  def welcome_email(user)
    @user = user 
    mail(to: @user.email, subject: 'Successfully signed into humantour.org!')
  end
  
  def send_interview(email, post)
    @em = email 
    @post = post 
    mail(to: @em.email, subject:'Humantour Interview: ' + @post.title) 
  end
end
