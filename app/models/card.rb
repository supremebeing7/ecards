class Card < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :category
  has_and_belongs_to_many :ratings

  has_attached_file :card_image,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png",
                    :storage => :s3,
                    :bucket  => ENV['S3_BUCKET_NAME']
  validates_attachment_content_type :card_image, :content_type => /\Aimage\/.*\Z/
end
