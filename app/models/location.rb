class Location < ApplicationRecord
  belongs_to :customer
  belongs_to :business
  has_many :clients
end
