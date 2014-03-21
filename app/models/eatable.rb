class Eatable < ActiveRecord::Base
  has_many :foods, :class_name => :Food, :foreign_key => :eatable
  has_many :locations
  has_many :months
  serialize :month_id, Array
end
