class CreateAssessments < ActiveRecord::Migration[5.1]
  def change
    create_table :assessments do |t|
      t.references :client, foreign_key: true
      t.references :user, foreign_key: true
      t.references :assessment_type, foreign_key: true
      t.date :assessment_completed
      t.date :assessment_expired
      t.string :status
      t.string :notes
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
