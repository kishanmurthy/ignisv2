class CreateRranges < ActiveRecord::Migration[5.0]
  def change
    create_table :rranges do |t|
      t.string :name
      t.references :zone, foreign_key: true

      t.timestamps
    end
  end
end
