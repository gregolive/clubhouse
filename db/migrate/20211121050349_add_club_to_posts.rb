class AddClubToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :club, :string
  end
end
