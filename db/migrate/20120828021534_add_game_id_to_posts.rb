class AddGameIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :game_id, :integer

    remove_index :games, :post_id

    remove_column :games, :post_id  
  end
end
