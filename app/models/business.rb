# == Schema Information
#
# Table name: businesses
#
#  id         :integer          not null, primary key
#  name       :string
#  phone      :string
#  email      :string
#  website    :string
#  address    :string
#  city       :string
#  state      :string
#  postcode   :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
