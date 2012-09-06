class AddGamingDateToPost < ActiveRecord::Migration
  def change
    add_column :posts, :gaming_date, :string
  end
end
