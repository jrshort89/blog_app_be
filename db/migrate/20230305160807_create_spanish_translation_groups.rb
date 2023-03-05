class CreateSpanishTranslationGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :spanish_translation_groups do |t|
      t.integer :group_id, null: false
      t.integer :spanish_translation_id, null: false

      t.timestamps
    end
  end
end
