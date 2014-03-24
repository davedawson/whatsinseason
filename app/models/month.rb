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
  belongs_to :foods
  has_many :locations
  # has_many :eatables_months
  # has_many :eatable, :through => :eatables_months
  has_and_belongs_to_many :eatables
end
