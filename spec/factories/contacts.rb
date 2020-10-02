FactoryBot.define do
  factory :contact do
    first_name {FFaker::Name.first_name}
    last_name {FFaker::Name.last_name}
    email {FFaker::Internet.email}
    phone_number {"+919158168788"}
    message {"Please contact me"}
  end
end