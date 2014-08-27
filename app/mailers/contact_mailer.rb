class ContactMailer < ActionMailer::Base
  default to: "your@email.com"

  def contact_email(entry)
  	@entry = entry
  	@from = @entry.email
  	@name = @entry.name
  	@message = @entry.message
  	@phone = @entry.phone || ""

  	mail(from: "#{@name} <#{@from}>", subject: "Contact form submitted on %appname")
  end
end
