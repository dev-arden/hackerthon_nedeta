class CreateDetareplies < ActiveRecord::Migration
  def change
    create_table :detareplies do |t|
      t.text :content
      t.integer :post_id
      t.timestamps null: false
    end
  end
end
