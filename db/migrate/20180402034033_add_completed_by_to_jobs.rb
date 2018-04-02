class AddCompletedByToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :completed_by_id, :integer
  end
end
