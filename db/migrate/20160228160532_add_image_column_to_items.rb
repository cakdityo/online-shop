class AddImageColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :image, :string, after: :price
  end
end
