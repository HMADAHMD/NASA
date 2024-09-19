# == Schema Information
#
# Table name: properties
#
#  id          :bigint           not null, primary key
#  name        :string
#  headline    :string
#  description :string
#  city        :string
#  state       :string
#  country     :string
#  address     :string
#  latitude    :float
#  longitude   :float
#  bedrooms    :integer
#  bathrooms   :integer
#  square_feet :integer
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :property do
    name { Faker::FunnyName.two_word_name }
    headline { Faker::Demographic.race }
    description { Faker::Lorem.paragraph }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country { Faker::Address.country }
    address {Faker::Address.street_address}
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    bedrooms { 1 }
    bathrooms { 1 }
    square_feet { 550 }
    price { 100 }
  end
end
