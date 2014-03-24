class CreateLocationsMonthsTable < ActiveRecord::Migration
  def change
    create_table :locations_months, :id => false do |t|
      t.integer :location_id
      t.integer :month_id
    end
  end
end
