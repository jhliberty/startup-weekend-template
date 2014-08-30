class ContactMailer < ActionMailer::Base
  default to: "johnhenry.liberty@gmail.com"

  def contact_email(entry)
  	@entry = entry
  	@from = @entry.email
  	@name = @entry.name
  	@message = @entry.message

  	mail(from: "#{@name} <#{@from}>", subject: "Contact form submitted on %appname")
  end
end
