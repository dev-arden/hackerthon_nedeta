class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :local
      t.string :money
      t.string :title
      t.text :content
      t.date :date
      t.datetime :time
      t.datetime :time2
      t.timestamps null: false
    end
  end
end
