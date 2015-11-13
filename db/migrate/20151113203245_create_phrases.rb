class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :english
      t.string :traditional
      t.string :pinyin
      t.belongs_to :list, index: true

      t.timestamps null: false
    end
    add_foreign_key :phrases, :lists
  end
end
