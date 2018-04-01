class CreateLocationsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :locations_users do |t|
      t.integer :location_id, index: true
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
