class AddLinksToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :github_link, :string
    add_column :posts, :deployment_link, :string
  end
end
