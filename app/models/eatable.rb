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
  # has_one :eatables_months
  # has_many :months, :through => :eatables_months
  has_and_belongs_to_many :months
  belongs_to :location
  belongs_to :food
  # serialize :month_id, Array

  def self.create_eatable(eatable_params)
    @eatable = Eatable.create!(
      :food_id => eatable_params[:food_id],
      :location_id => eatable_params[:location_id],
      :description => eatable_params[:description]
    )
  end
end
