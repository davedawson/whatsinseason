# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Location < ActiveRecord::Base
  has_many :foods, :through => :eatables
  has_many :eatables
  has_and_belongs_to_many :months
end
