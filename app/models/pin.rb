class Pin < ActiveRecord::Base
  attr_accessible :description, :brand, :price, :markdown, :markprice, :validate_max_pins_have_been_reached
  
  
  validates :description, presence: true
  validates :user_id, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates_length_of :description, :minimum => 3, :maximum => 25, :allow_blank => false
  validates :price, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0}
  validate :validate_max_pins_have_been_reached
  
  belongs_to :user
  
  has_attached_file :image, styles: { medium: "320x240>"}

  def validate_max_pins_have_been_reached
      if User.current != user.role? || user.pins.size <= 5 
      errors[:base] << "To track more products, please upgrade your account"
    end
  end
end

  

