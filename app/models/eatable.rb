class Eatable < ActiveRecord::Base
  has_many :foods
  has_many :locations
  has_many :months
  serialize :month_id, Array
end
