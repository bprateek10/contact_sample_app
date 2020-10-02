require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    @contact = create(:contact)
  end

  context "validations" do
    it "valid attributes" do 
      expect(@contact).to be_valid
    end

    required_attributes = [:first_name, :last_name, :email, :message]

    required_attributes.each do |_attr|
      it "#{_attr} Required Attributes Validations" do 
        @contact[_attr] = nil
        expect(@contact).to be_invalid
        expect(@contact.errors[_attr]).to be_present
      end
    end
  end
end
