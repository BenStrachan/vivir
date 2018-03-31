class CreateJobTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :job_types do |t|
      t.string :name
      t.integer :default_weekly_visits
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
