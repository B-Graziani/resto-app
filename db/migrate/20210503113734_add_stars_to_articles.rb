class AddStarsToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :stars, :integer
  end
end
