class AddPostIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :post_id, :integer
    
    add_index :games, :post_id
  end
end
