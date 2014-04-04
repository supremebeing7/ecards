class AddSlugs < ActiveRecord::Migration
  def change
    add_column :cards, :slugs, :string
    add_column :categories, :slugs, :string
  end
end
