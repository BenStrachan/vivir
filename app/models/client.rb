class Client < ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :job_type, optional: true
  belongs_to :business
  has_many :jobs
  has_many :assessments
end
