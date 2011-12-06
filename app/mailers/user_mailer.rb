class UserMailer < ActionMailer::Base
  default :from => "amontagnese@grio.com"
  
 
  def eatvent_email(email, eatvent, subjet)
    # puts "sending messages"
    @eatvent = eatvent
    mail(:to => email, :subject => subject, :body => "\n-Creator: " + eatvent.creator + " \n-Where: " + eatvent.where + "\n-When: " + eatvent.day.to_s + eatvent.hour.to_s + "\n-Who: " + eatvent.people )
  end

  def test_email
    mail(:to => "bettin0@hotmail.it", :subject => "test email sent from Rails")
  end

end