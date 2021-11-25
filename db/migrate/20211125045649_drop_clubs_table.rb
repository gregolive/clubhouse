class DropClubsTable < ActiveRecord::Migration[6.1]
  def up
    drop_table :clubs
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
