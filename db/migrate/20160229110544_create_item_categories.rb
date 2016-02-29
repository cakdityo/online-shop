class CreateItemCategories < ActiveRecord::Migration
  def change
    create_table :item_categories do |t|
      t.belongs_to :item, foreign_key: true
      t.belongs_to :category, foreign_key: true

      t.timestamps null: false
    end
  end
end
