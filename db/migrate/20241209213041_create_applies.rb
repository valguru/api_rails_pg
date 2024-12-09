class CreateApplies < ActiveRecord::Migration[7.1]
  def change
    create_table :applies do |t|
      t.integer :job_id
      t.integer :geek_id
      t.boolean :read
      t.boolean :invited

      t.timestamps
    end
  end
end
