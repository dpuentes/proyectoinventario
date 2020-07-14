class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.text :serial
      t.integer :maker_ID
      t.text :model
      t.integer :group_ID
      t.date :date_of_purchase
      t.date :date_of_output
      t.money :value
      t.integer :time_of_warranty
      t.integer :provider_ID
      t.macaddr :mac_wireless
      t.inet :ip_wlan
      t.macaddr :mac_ethernet
      t.inet :ip_lan
      t.text :oprating_system
      t.text :processor
      t.text :hdd
      t.text :ram
      t.integer :dependence_ID
      t.integer :analyst_ID
      t.integer :status
      t.integer :condition
      t.integer :city_ID
      t.integer :commentary_ID

      t.timestamps
    end
  end
end
