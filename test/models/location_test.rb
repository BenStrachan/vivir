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

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
