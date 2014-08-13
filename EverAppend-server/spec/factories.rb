FactoryGirl.define do
  factory :user do
    uid { rand(10000) }
    name { Faker::Name.name }
    username { name.underscore }
    auth_token { SecureRandom.hex }
  end
end
