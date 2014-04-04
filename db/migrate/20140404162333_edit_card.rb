class EditCard < ActiveRecord::Migration
  def change
    rename_table :catagories, :categories
    remove_column :categories, :card_id
    add_column :cards, :category_id, :int
  end
end
