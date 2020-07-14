class CreateRemotes < ActiveRecord::Migration[6.0]
  def change
    create_table :remotes do |t|
      t.text :remote_alias
      t.integer :equipmen_ID
      t.text :remote_password
      t.integer :analyst_ID

      t.timestamps
    end
  end
end
