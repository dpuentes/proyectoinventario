class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.text :name_city

      t.timestamps
    end
  end
end
