class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :city_id
      t.integer :league_id

      t.timestamps
    end
    add_index :assignments, :city_id
    add_index :assignments, :league_id
  end
end
