class ContactMailer < ActionMailer::Base
  default to: "johnhenry.liberty@gmail.com"

  def contact_email(entry)
  	@entry = entry
  	@from = @entry.email
  	@name = @entry.name
  	@message = @entry.message
  	@subject = @entry.subject

  	mail(from: "#{@name} <#{@email}>", subject: "Contact form submitted on Startup Weekend")
  end
end
