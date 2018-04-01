# == Schema Information
#
# Table name: customers
#
#  id            :integer          not null, primary key
#  business_name :string
#  first_name    :string
#  last_name     :string
#  phone         :string
#  fax           :string
#  email         :string
#  address       :string
#  city          :string
#  state         :string
#  country       :string
#  business_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Customer < ApplicationRecord
  belongs_to :business
  has_many :locations
end
