class Location < ActiveRecord::Base
  has_many :foods
  has_many :eatables
end
