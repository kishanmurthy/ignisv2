class CreateFirestations < ActiveRecord::Migration[5.0]
  def change
    create_table :firestations do |t|
      t.string :name
      t.string :government_sanction_number
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :phone_no
      t.string :class_of_fire_station
      t.date :date_of_establishment
      t.integer :cost_of_establishment
      t.integer :sanctioned_strength
      t.integer :actual_strength
      t.boolean :taluk_bit
      t.integer :status
      t.references :hobli, foreign_key: true

      t.timestamps
    end
  end
end
