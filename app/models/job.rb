class Job < ApplicationRecord
  belongs_to :client
  belongs_to :job_type
  belongs_to :user, optional: true
  belongs_to :business
end
