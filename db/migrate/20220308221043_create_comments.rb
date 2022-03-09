class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :user_comment
      t.references :activity
      t.timestamps 
    end
  end
end
