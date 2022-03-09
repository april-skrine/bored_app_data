class DeleteIsFavorited < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :is_favorited?
  end
end
