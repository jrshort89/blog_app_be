# frozen_string_literal: true

class CreateUserSpanishTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_spanish_translations do |t|
      t.integer :user_id
      t.integer :spanish_translation_id

      t.timestamps
    end
  end
end
