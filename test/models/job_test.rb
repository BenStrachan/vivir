# == Schema Information
#
# Table name: jobs
#
#  id                 :integer          not null, primary key
#  client_id          :integer
#  job_type_id        :integer
#  status             :string
#  visit_number       :integer
#  weekly_visit_total :integer
#  user_id            :integer
#  completed_date     :date
#  notes              :string
#  business_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  completed_by_id    :integer
#

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
