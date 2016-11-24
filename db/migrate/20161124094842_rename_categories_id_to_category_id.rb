class RenameCategoriesIdToCategoryId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :articles,:categories_id,:category_id
  end
end
