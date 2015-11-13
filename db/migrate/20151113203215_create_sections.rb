class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.belongs_to :topic, index: true

      t.timestamps null: false
    end
    add_foreign_key :sections, :topics
  end
end
