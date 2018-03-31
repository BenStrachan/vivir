class AddBusinessToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :business_id, :integer
  end
end
