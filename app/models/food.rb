class Food < ActiveRecord::Base
  has_many :eatables
  has_many :locations
  has_many :months
end
