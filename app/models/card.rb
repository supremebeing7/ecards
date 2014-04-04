class Card < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :category
  has_and_belongs_to_many :ratings
end
