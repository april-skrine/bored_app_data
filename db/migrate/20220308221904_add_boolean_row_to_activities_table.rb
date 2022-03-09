class AddBooleanRowToActivitiesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :is_favorited?,  :boolean
  end
end
