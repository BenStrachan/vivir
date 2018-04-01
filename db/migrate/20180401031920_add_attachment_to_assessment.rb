class AddAttachmentToAssessment < ActiveRecord::Migration[5.1]
  def up
    add_attachment :assessments, :attachment
  end

  def down
    remove_attachment :assessments, :attachment
  end
end
