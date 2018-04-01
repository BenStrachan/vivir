# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  name        :string
#  phone       :string
#  fax         :string
#  email       :string
#  address     :string
#  city        :string
#  state       :string
#  country     :string
#  business_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Location < ApplicationRecord
  belongs_to :customer
  belongs_to :business
  has_many :clients
end
