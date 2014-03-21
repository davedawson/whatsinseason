# == Schema Information
#
# Table name: eatables
#
#  id          :integer          not null, primary key
#  food_id     :integer
#  location_id :integer
#  month_id    :text
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Eatable < ActiveRecord::Base
  # has_one :food, :class_name => :Food, :foreign_key => :eatable
  has_many :locations
  has_many :months
  belongs_to :food
  serialize :month_id, Array
end
