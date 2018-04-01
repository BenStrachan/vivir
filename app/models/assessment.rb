# == Schema Information
#
# Table name: assessments
#
#  id                      :integer          not null, primary key
#  client_id               :integer
#  user_id                 :integer
#  assessment_type_id      :integer
#  assessment_completed    :date
#  assessment_expired      :date
#  status                  :string
#  notes                   :string
#  business_id             :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  attachment_file_name    :string
#  attachment_content_type :string
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#

class Assessment < ApplicationRecord
  belongs_to :client
  belongs_to :user
  belongs_to :assessment_type
  belongs_to :business
  has_attached_file :attachment
validates_attachment_content_type :attachment,
  content_type: [
    'application/pdf'
  ]
validates_attachment_size :attachment, less_than: 10.megabytes
end
