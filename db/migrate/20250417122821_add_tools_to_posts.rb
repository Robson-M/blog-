class AddToolsToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :tools, :string
  end
end
