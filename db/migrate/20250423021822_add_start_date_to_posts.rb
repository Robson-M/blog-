class AddStartDateToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :start_date, :date
  end
end
