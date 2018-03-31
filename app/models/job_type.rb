class JobType < ApplicationRecord
  belongs_to :business
  has_many :clients
end
