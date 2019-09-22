class AddFieldsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :body_text, :text
    add_column :posts, :author, :string
    add_column :posts, :score, :integer
  end
end
