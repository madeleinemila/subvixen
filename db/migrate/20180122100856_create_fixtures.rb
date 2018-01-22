class CreateFixtures < ActiveRecord::Migration[5.1]
  def change
    create_table :fixtures do |t|
      t.text :name
      t.integer :x
      t.integer :y
      t.integer :position_number
      t.integer :rig_id

      t.timestamps
    end
  end
end
