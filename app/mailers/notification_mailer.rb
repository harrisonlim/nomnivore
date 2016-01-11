class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomnivoreapp.com"

  def comment_added
  	mail(to: "turndowntonforwhat@gmail.com",
  		subject: "A comment has been added to your place.")
  end
end
