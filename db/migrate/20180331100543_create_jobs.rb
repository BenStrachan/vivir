class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.references :client, foreign_key: true
      t.references :job_type, foreign_key: true
      t.string :status
      t.integer :visit_number
      t.integer :weekly_visit_total
      t.references :user, foreign_key: true
      t.date :completed_date
      t.string :notes
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
