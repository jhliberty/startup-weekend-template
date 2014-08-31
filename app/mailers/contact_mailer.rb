class ContactMailer < ActionMailer::Base
  default to: "your@email.here"

  def contact_email(entry)
  	@entry = entry
  	@email = @entry.email
  	@name = @entry.name
  	@message = @entry.message
  	@subject = @entry.subject

  	mail(from: "#{@name} <#{@email}>", subject: "[#{@subject}] ProjectName contact form submitted.")
  end
end
