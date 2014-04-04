class EditCard < ActiveRecord::Migration
  def change
    remove_column :categories, :card_id
    add_column :cards, :category_id, :int
  end
end
