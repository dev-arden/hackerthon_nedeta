class RenameLikesColumn < ActiveRecord::Migration
  def change
    rename_column :likes, :post_id, :deta_post_id
  end
end
