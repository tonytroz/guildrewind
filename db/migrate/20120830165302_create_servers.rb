class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.integer :game_id

      t.timestamps
    end

    add_index :servers, :game_id
  end
end
