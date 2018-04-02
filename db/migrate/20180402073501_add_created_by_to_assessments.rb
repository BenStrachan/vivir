class AddCreatedByToAssessments < ActiveRecord::Migration[5.1]
  def change
    add_column :assessments, :created_by_id, :integer
  end
end
