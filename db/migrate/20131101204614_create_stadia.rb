class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.integer :city_id
      t.string :name

      t.timestamps
    end
    add_index :stadia, :city_id
  end
end
