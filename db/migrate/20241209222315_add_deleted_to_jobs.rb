class AddDeletedToJobs < ActiveRecord::Migration[7.1]
  def change
    add_column :jobs, :deleted, :boolean
  end
end
