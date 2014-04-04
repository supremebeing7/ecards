class RenameSlugs < ActiveRecord::Migration
  def change
    rename_column :cards, :slugs, :slug
    rename_column :categories, :slugs, :slug
  end
end
