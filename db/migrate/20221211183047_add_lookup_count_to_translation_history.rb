# frozen_string_literal: true

class AddLookupCountToTranslationHistory < ActiveRecord::Migration[7.0]
  def change
    add_column :translation_histories, :lookup_count, :integer, null: false, default: 1
  end
end
