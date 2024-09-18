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
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :property do
    name { "MyString" }
    headline { "MyString" }
    description { "MyString" }
    city { "MyString" }
    state { "MyString" }
    country { "MyString" }
  end
end
