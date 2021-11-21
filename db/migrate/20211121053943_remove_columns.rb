class RemoveColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :club_id
  end
end
