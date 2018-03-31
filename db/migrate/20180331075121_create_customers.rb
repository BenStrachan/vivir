class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :business_name
      t.string :first_name
      t.string :last_name
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
