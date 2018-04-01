# == Schema Information
#
# Table name: clients
#
#  id            :integer          not null, primary key
#  first_name    :string
#  last_name     :string
#  date_of_birth :date
#  location_id   :integer
#  room          :string
#  job_type_id   :integer
#  job_notes     :string
#  notes         :string
#  business_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  full_name     :string
#

require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
