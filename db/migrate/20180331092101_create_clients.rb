class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.references :location, foreign_key: true
      t.string :room
      t.references :job_type, foreign_key: true
      t.string :job_notes
      t.string :notes
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
