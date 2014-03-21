# == Schema Information
#
# Table name: months
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Month < ActiveRecord::Base
  has_many :foods
  has_many :locations
  has_and_belongs_to_many :eatables
end
