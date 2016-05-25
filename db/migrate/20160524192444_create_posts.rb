class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string      :content
      t.integer     :wordcount
      t.integer     :charcount1
      t.integer     :charcount2
      t.timestamps null: false
    end
  end
end
