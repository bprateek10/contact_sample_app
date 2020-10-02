require "rails_helper"

RSpec.describe ContactsController, type: :controller do
  let(:params){{format: :html}}
  let(:attr_params){{
    format: :html,
    contact: {
      first_name: 'test',
      last_name: 'user',
      phone_number: '+918787875632',
      email: 'test@yopmail.com',
      message: 'hey!!'
    }
  }}

  describe 'GET new' do
    before do
      get 'new', params
    end

    it{expect(response.code).to eq('200')}
  end

  describe 'POST create success' do
    before do
      get 'create', {params: attr_params}
    end

    it{expect(response.code).to eq('302')}
    it{expect(flash[:success]).to eq('Response saved')}
    it{expect(flash[:errors]).to eq(nil)}
  end

  describe 'POST create fail' do
    before do
      attr_params[:contact][:first_name]  = nil
      get 'create', {params: attr_params}
    end

    it{expect(response.code).to eq('302')}
    it{expect(flash[:success]).to eq(nil)}
    it{expect(flash[:errors]).to eq("First name can't be blank")}
  end
end
