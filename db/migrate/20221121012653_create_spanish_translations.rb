class CreateSpanishTranslations < ActiveRecord::Migration[7.0]
  def change
    create_table :spanish_translations do |t|
      t.string :spanish_text
      t.string :english_text

      t.timestamps
    end
  end
end
