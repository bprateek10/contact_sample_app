class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    if contact.save
      flash[:success] = 'Response saved'  
    else
      flash[:errors] = contact.errors.full_messages.join(',')
    end
    redirect_to root_path 
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone_number, :message)
  end
  
end
