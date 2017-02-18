class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :house_no
      t.integer :no_of_bhk
      t.string :designation
      t.bit :status
      t.references :building, foreign_key: true

      t.timestamps
    end
  end
end
