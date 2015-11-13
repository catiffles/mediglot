class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.belongs_to :section, index: true

      t.timestamps null: false
    end
    add_foreign_key :lists, :sections
  end
end
