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

  def send_feedback(email, name, msg)
    @msg = msg
    mail(to: "contact@humantour.org", :from => email,  subject: '[HT feedback]from ' + name)
  end

end
