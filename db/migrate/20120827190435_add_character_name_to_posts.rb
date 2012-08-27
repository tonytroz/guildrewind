class AddCharacterNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :character_name, :string

    add_index :posts, :character_name
  end
end
