class AddGuildNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :guild_name, :string

    add_index :posts, :guild_name
  end
end
