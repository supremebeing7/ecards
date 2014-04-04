class AddAttachmentCardImageToCards < ActiveRecord::Migration
  def self.up
    change_table :cards do |t|
      t.attachment :card_image
    end
  end

  def self.down
    drop_attached_file :cards, :card_image
  end
end
