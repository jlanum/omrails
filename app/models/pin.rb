class Pin < ActiveRecord::Base
  attr_accessible :description, :product, :brand, :price
  
  
  validates :description, presence: true
  validates :user_id, presence: true
  validates :product, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  
  
  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}
  
end
