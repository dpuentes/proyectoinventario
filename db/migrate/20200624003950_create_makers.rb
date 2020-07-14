class CreateMakers < ActiveRecord::Migration[6.0]
  def change
    create_table :makers do |t|
      t.text :makername

      t.timestamps
    end
  end
end
