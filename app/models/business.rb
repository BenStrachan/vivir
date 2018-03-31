class Business < ApplicationRecord
  has_many :users
  has_many :customers
  has_many :locations
  has_many :assessment_types
  has_many :job_types
  has_many :clients
  has_many :jobs
  has_many :assessments
end
