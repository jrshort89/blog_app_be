class RemoveUserIdFromSpanishTranslation < ActiveRecord::Migration[7.0]
  def change
    remove_column :spanish_translations, :user_id, :integer
  end
end
