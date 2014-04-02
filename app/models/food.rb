# == Schema Information
#
# Table name: foods
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  image       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Food < ActiveRecord::Base
  has_many :locations, :through => :eatables
  has_many :months
  has_many :eatables
  # belongs_to :eatables, :class_name => :Food, :foreign_key => :food
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
