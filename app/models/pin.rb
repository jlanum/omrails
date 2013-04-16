# == Schema Information
#
# Table name: pins
#
#  id                 :integer          not null, primary key
#  description        :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  product            :string(255)
#  brand              :string(255)
#  price              :integer
#  markdown           :date
#  quantity           :integer
#

class Pin < ActiveRecord::Base
  attr_accessible :description, :brand, :quantity, :markdown, :markprice
  
  
  validates :description, presence: true
  validates :user_id, presence: true
  validates :brand, presence: true
  validates :quantity, presence: true
  validates_length_of :description, :minimum => 3, :maximum => 25, :allow_blank => false
  
  
  belongs_to :user
  
  has_attached_file :image, styles: { medium: "320x240>"}
  
    def validate_max_pins_have_not_been_reached
      if User.current != user.role? || user.pins.size <= 5
      errors[:base] << "To track more products, please upgrade your account"
    end
  end
end

  

