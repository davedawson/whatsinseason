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
end
