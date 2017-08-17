class RenameDetarepliesColumn < ActiveRecord::Migration
  def change
    rename_column :detareplies, :post_id, :deta_post_id
  end
end
