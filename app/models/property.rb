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
class Property < ApplicationRecord
end
