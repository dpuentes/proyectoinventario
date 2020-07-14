class CreateProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :providers do |t|
      t.text :name_provider
      t.integer :city_Id
      t.text :contact_name
      t.text :contact_phone
      t.text :mail

      t.timestamps
    end
  end
end
