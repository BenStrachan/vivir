class Assessment < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :assessment_type
  belongs_to :business
end
