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
