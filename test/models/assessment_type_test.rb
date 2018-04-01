# == Schema Information
#
# Table name: assessment_types
#
#  id                     :integer          not null, primary key
#  name                   :string
#  default_monthly_repeat :integer
#  business_id            :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class AssessmentTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
