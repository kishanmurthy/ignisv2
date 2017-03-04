class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.integer :bays
      t.integer :offices
      t.integer :rest_room
      t.integer :telephone_room
      t.string :class_room
      t.boolean :residential_quaters
      t.references :firestation, foreign_key: true

      t.timestamps
    end
  end
end
