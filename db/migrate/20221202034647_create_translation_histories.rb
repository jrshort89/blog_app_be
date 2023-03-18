# frozen_string_literal: true

class CreateTranslationHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :translation_histories do |t|
      t.integer :user_id
      t.integer :spanish_translation_id

      t.timestamps
    end
  end
end
