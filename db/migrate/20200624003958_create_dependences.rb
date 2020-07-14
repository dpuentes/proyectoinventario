class CreateDependences < ActiveRecord::Migration[6.0]
  def change
    create_table :dependences do |t|
      t.text :dependence_name

      t.timestamps
    end
  end
end
