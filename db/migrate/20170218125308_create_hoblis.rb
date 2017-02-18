class CreateHoblis < ActiveRecord::Migration[5.0]
  def change
    create_table :hoblis do |t|
      t.string :name
      t.references :taluk, foreign_key: true

      t.timestamps
    end
  end
end
