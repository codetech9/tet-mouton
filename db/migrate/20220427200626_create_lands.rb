class CreateLands < ActiveRecord::Migration[7.0]
  def change
    create_table :lands do |t|
      t.string :location
      t.integer :area
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
