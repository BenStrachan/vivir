class CreateAssessmentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :assessment_types do |t|
      t.string :name
      t.integer :default_monthly_repeat
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
