class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.references :customer, foreign_key: true
      t.string :name
      t.string :phone
      t.string :fax
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
