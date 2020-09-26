class Contact < ApplicationRecord

  #Validations
  validates_presence_of :first_name, :last_name, :email, :message
  validates_uniqueness_of :email
end

