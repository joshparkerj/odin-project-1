class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :state_province
      t.integer :population
      t.float :landarea
      t.string :mayor

      t.timestamps
    end
  end
end
