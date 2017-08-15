class CreateComplainReplies < ActiveRecord::Migration
  def change
    create_table :complain_replies do |t|

      t.text :content
      t.integer :complain_post_id

      t.timestamps null: false
    end
  end
end
