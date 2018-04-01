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

class JobType < ApplicationRecord
  belongs_to :business
  has_many :clients
end
