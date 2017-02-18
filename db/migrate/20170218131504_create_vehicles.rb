class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :registration_no
      t.string :make
      t.string :model
      t.integer :year_of_manufacture
      t.integer :cost
      t.date :date_of_purchase
      t.string :chassis_no
      t.string :engine_no
      t.integer :fuel_capacity
      t.string :fabricator
      t.string :type
      t.string :tax_card
      t.string :sanction_order_no
      t.date :sanction_date
      t.integer :proposed_mileage
      t.integer :actual_mileage
      t.integer :kilometers_run
      t.integer :total_fuel_consumed
      t.references :firestation, foreign_key: true

      t.timestamps
    end
  end
end
