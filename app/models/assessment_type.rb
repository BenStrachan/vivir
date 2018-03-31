class AssessmentType < ApplicationRecord
  belongs_to :business
  has_many :assessments
end
