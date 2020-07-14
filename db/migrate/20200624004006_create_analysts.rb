class CreateAnalysts < ActiveRecord::Migration[6.0]
  def change
    create_table :analysts do |t|
      t.text :analyst_name
      t.integer :identification
      t.integer :city_ID
      t.text :address
      t.integer :phone
      t.text :personal_mail
      t.text :work_mail

      t.timestamps
    end
  end
end
