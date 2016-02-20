class AddColumnsToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :title, :string
    add_column :articles, :author, :string
    add_column :articles, :volume, :integer
    add_column :articles, :issue, :integer
  end
end
