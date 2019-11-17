class AddDateToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles,:date,:string
  end
end
