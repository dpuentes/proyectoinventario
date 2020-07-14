class CreateExtensions < ActiveRecord::Migration[6.0]
  def change
    create_table :extensions do |t|
      t.integer :number_extension
      t.text :sip_password
      t.integer :analyst_ID

      t.timestamps
    end
  end
end
