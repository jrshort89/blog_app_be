class DropDupTables < ActiveRecord::Migration[7.0]
  def up
    drop_table :groups
    drop_table :spanish_translation_groups
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
