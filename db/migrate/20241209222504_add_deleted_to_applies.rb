class AddDeletedToApplies < ActiveRecord::Migration[7.1]
  def change
    add_column :applies, :deleted, :boolean
  end
end
