class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.column :number, :int

      t.timestamps
    end
    create_table :cards_ratings do |t|
      t.column :card_id, :int
      t.column :rating_id, :int

      t.timestamps
    end
  end
end
