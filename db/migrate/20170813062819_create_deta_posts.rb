class CreateDetaPosts < ActiveRecord::Migration
  def change
    create_table :deta_posts do |t|
      t.string :type
      t.string :local
      t.string :money
      t.string :title
      t.text :content
      t.date :date
      t.datetime :time
      t.datetime :time2
      t.string :work
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
