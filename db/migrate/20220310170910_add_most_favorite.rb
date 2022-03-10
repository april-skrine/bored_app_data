class AddMostFavorite < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :most_popular, :boolean
  end
end
