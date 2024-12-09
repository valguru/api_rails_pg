class AddDeletedToGeeks < ActiveRecord::Migration[7.1]
  def change
    add_column :geeks, :deleted, :boolean
  end
end
