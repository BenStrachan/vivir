class Customer < ApplicationRecord
  belongs_to :business
  has_many :locations
end
