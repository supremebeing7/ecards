class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.column :name, :string
      t.column :image_url, :string

      t.timestamps
    end
    create_table :categories do |t|
      t.column :name, :string
      t.column :card_id, :int

      t.timestamps
    end
  end
end
