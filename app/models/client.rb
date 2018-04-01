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
#

class Client < ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :job_type, optional: true
  belongs_to :business
  has_many :jobs
  has_many :assessments

  def full_name
    [first_name, last_name].join(" ")
  end
  
end
