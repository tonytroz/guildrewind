class AddServerIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :server_id, :integer
  end
end
