# == Schema Information
#
# Table name: job_types
#
#  id                    :integer          not null, primary key
#  name                  :string
#  default_weekly_visits :integer
#  business_id           :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class JobTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
