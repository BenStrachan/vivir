# == Schema Information
#
# Table name: businesses
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  email      :string
#  website    :string
#  address    :string
#  city       :string
#  state      :string
#  postcode   :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
