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
  has_many :months
  belongs_to :location
  belongs_to :food
  serialize :month_id, Array
end
