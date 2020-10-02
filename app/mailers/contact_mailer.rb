class ContactMailer < ApplicationMailer
  DEFAULT_TO = "info@ajackus.com"
  
  def contact_mail(contact)
    @contact = contact
    mail(subject: 'Contact Request', to: DEFAULT_TO)
  end  
end
