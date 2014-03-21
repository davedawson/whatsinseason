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
  has_many :locations
  has_many :months
  has_many :eatables, :class_name => :Eatable, :foreign_key => :food
  # belongs_to :eatables, :class_name => :Food, :foreign_key => :food
end
