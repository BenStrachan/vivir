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
#

class Job < ApplicationRecord
  STATUS = [
    'Treated',
    'Out of facility',
    'Hospitalised',
    'Refused when offered treatment',
    'Sick',
    'Facility in outbreak',
    'Allied health professional sick'
  ]

  belongs_to :client
  belongs_to :job_type
  belongs_to :user, optional: true
  belongs_to :business
end
