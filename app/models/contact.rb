class Contact < ApplicationRecord

  #Validations
  validates_presence_of :first_name, :last_name, :email, :message, :message => :blank

  #Callbacks
  after_create :send_email


  private

  def send_email
    ContactMailer.contact_mail(self).deliver_now
  end
end
