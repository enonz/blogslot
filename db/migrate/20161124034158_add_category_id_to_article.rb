class AddCategoryIdToArticle < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :categories, foreign_key: true
  end
end
