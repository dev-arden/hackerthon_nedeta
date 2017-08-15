class CreateComplainPosts < ActiveRecord::Migration
  def change
    create_table :complain_posts do |t|
      
      t.string :complain_title
      t.text :complain_content

      t.timestamps null: false
    end
  end
end
