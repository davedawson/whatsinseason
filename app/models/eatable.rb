class Eatable < ActiveRecord::Base
  has_many :foods
  has_many :locations
  has_many :months
end
