class CreateCommentaries < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaries do |t|
      t.text :content_comment
      t.date :date_comment
      t.integer :analyst_ID

      t.timestamps
    end
  end
end
