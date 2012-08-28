class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content, :null => false
      t.boolean :unread, :null => false, :default => true
      t.integer :post_id, :null => false
      t.integer :poster_id, :null => false
      t.integer :replier_id, :null => false

      t.timestamps
    end

    add_index :replies, [:post_id, :replier_id, :created_at]
  end
end
