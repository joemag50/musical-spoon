class CategoryToCategoryid < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :category, :category_id
  end
end
