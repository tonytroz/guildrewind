class AddSubjectToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :subject, :string

    add_index :posts, :subject
  end
end
